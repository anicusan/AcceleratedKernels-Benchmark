
using LoopVectorization
using BenchmarkTools


# Apple
# using Metal
# const DeviceArray = MtlArray

# AMD
# using AMDGPU
# const DeviceArray = ROCArray

# CUDA
using CUDA
const DeviceArray = CuArray


using GPUArrays
import AcceleratedKernels as AK

using Random
rng = Xoshiro(0)


function ljg_c!(energies, atoms1, atoms2, epsilon, sigma, A, r0, cutoff)
    @ccall "arithmetic_kernel.so".ljg_cpu(
        energies::Ptr{Cfloat},
        atoms1::Ptr{Cfloat},
        atoms2::Ptr{Cfloat},
        length(energies)::Cint,
        epsilon::Cfloat,
        sigma::Cfloat,
        A::Cfloat,
        r0::Cfloat,
        cutoff::Cfloat,
    )::Cvoid
end


function ljg_c2!(energies, atoms1, atoms2, epsilon, sigma, A, r0, cutoff)
    @ccall "arithmetic_kernel.so".ljg_cpu2(
        energies::Ptr{Cfloat},
        atoms1::Ptr{Cfloat},
        atoms2::Ptr{Cfloat},
        length(energies)::Cint,
        epsilon::Cfloat,
        sigma::Cfloat,
        A::Cfloat,
        r0::Cfloat,
        cutoff::Cfloat,
    )::Cvoid
end


function ljg_comp!(energies, atoms1, atoms2, epsilon, sigma, A, r0, cutoff)
    @ccall "arithmetic_kernel_omp.so".ljg_cpu(
        energies::Ptr{Cfloat},
        atoms1::Ptr{Cfloat},
        atoms2::Ptr{Cfloat},
        length(energies)::Cint,
        epsilon::Cfloat,
        sigma::Cfloat,
        A::Cfloat,
        r0::Cfloat,
        cutoff::Cfloat,
    )::Cvoid
end


function ljg_cpu!(energies, atoms1, atoms2, epsilon, sigma, A, r0, cutoff)
    @inbounds @fastmath for i in eachindex(energies)
        r = sqrt((atoms1[1, i] - atoms2[1, i])^2 +
                 (atoms1[2, i] - atoms2[2, i])^2 +
                 (atoms1[3, i] - atoms2[3, i])^2)
        if r < cutoff
            lj_potential = 4 * epsilon * ((sigma / r)^12 - (sigma / r)^6)
            g_potential = A * exp(-(r - r0)^2 / (2 * sigma^2))
            energies[i] = lj_potential + g_potential
        else
            energies[i] = 0
        end
    end
end


function ljg_ak!(energies::AbstractGPUArray, atoms1, atoms2, epsilon, sigma, A, r0, cutoff)
    @inbounds AK.foreachindex(energies, block_size=512) do i
        # Implementation like C2
        r = sqrt((atoms1[1, i] - atoms2[1, i]) * (atoms1[1, i] - atoms2[1, i]) +
                 (atoms1[2, i] - atoms2[2, i]) * (atoms1[2, i] - atoms2[2, i]) +
                 (atoms1[3, i] - atoms2[3, i]) * (atoms1[3, i] - atoms2[3, i]))
        if r < cutoff
            rs = sigma / r
            rs3 = rs * rs * rs
            rs6 = rs3 * rs3
            rs12 = rs6 * rs6
            lj_potential = 4 * epsilon * (rs12 - rs6)
            g_potential = A * exp(-(r - r0) * (r - r0) / (2 * sigma * sigma))
            energies[i] = lj_potential + g_potential
        else
            energies[i] = 0
        end
    end
end


function ljg_ak!(energies::AbstractArray, atoms1, atoms2, epsilon, sigma, A, r0, cutoff)
    @inbounds @fastmath AK.foreachindex(energies, scheduler=:threads) do i
        r = sqrt((atoms1[1, i] - atoms2[1, i])^2 +
                 (atoms1[2, i] - atoms2[2, i])^2 +
                 (atoms1[3, i] - atoms2[3, i])^2)
        if r < cutoff
            lj_potential = 4 * epsilon * ((sigma / r)^12 - (sigma / r)^6)
            g_potential = A * exp(-(r - r0)^2 / (2 * sigma^2))
            energies[i] = lj_potential + g_potential
        else
            energies[i] = 0
        end
    end
end



N = 100_000_000
DTYPE = Float32

energies = zeros(DTYPE, N)
atoms1 = rand(rng, DTYPE, (3, N)) * 10
atoms2 = rand(rng, DTYPE, (3, N)) * 10
epsilon = DTYPE(1)
sigma = DTYPE(1)
A = DTYPE(0.5)
r0 = DTYPE(1.5)
cutoff = DTYPE(3.0)


d_energies = DeviceArray(energies)
d_atoms1 = DeviceArray(atoms1)
d_atoms2 = DeviceArray(atoms2)


println("CPU Base")
display(@benchmark(ljg_cpu!($energies, $atoms1, $atoms2, $epsilon, $sigma, $A, $r0, $cutoff)))

println("CPU C")
display(@benchmark(ljg_c!($energies, $atoms1, $atoms2, $epsilon, $sigma, $A, $r0, $cutoff)))

println("CPU C 2")
display(@benchmark(ljg_c2!($energies, $atoms1, $atoms2, $epsilon, $sigma, $A, $r0, $cutoff)))

println("CPU C OpenMP")
display(@benchmark(ljg_comp!($energies, $atoms1, $atoms2, $epsilon, $sigma, $A, $r0, $cutoff)))

println("CPU AcceleratedKernels")
display(@benchmark(ljg_ak!($energies, $atoms1, $atoms2, $epsilon, $sigma, $A, $r0, $cutoff)))

println("$DeviceArray GPU AcceleratedKernels")
display(@benchmark(ljg_ak!($d_energies, $d_atoms1, $d_atoms2, $epsilon, $sigma, $A, $r0, $cutoff)))


