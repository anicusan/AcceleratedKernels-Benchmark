
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


function rbf_c!(z, v)
    @ccall "arithmetic_kernel.so".rbf_cpu(z::Ptr{Cfloat}, v::Ptr{Cfloat}, length(z)::Cint)::Cvoid
end


function rbf_c2!(z, v)
    @ccall "arithmetic_kernel.so".rbf_cpu2(z::Ptr{Cfloat}, v::Ptr{Cfloat}, length(z)::Cint)::Cvoid
end


function rbf_comp!(z, v)
    @ccall "arithmetic_kernel_omp.so".rbf_cpu(z::Ptr{Cfloat}, v::Ptr{Cfloat}, length(z)::Cint)::Cvoid
end


function rbf_cpu!(z, v)
    @fastmath for i in eachindex(z)
        @inbounds z[i] = exp(-1f0 / (1f0 - sqrt(v[1, i]^2 + v[2, i]^2 + v[3, i]^2)))
    end
end


function rbf_ak!(z::AbstractGPUVector, v::AbstractGPUArray)
    @fastmath AK.foreachindex(z, block_size=512) do i
        @inbounds z[i] = exp(-1 / (1 - sqrt(v[1, i] * v[1, i] + v[2, i] * v[2, i] + v[3, i] * v[3, i])))
    end
end


function rbf_ak!(z::AbstractVector, v::AbstractArray)
    @fastmath AK.foreachindex(z, scheduler=:polyester) do i
        @inbounds z[i] = exp(-1 / (1 - sqrt(v[1, i]^2 + v[2, i]^2 + v[3, i]^2)))
    end
end



N = 100_000_000
DTYPE = Float32

vh = rand(rng, DTYPE, (3, N))
zh = similar(vh, DTYPE, N)

vd = DeviceArray(vh)
zd = similar(vd, DTYPE, N)


println("CPU Base")
display(@benchmark(rbf_cpu!($zh, $vh)))

println("CPU C")
display(@benchmark(rbf_c!($zh, $vh)))

println("CPU C 2")
display(@benchmark(rbf_c2!($zh, $vh)))

println("CPU C OpenMP")
display(@benchmark(rbf_comp!($zh, $vh)))

println("CPU AcceleratedKernels")
display(@benchmark(rbf_ak!($zh, $vh)))

println("$DeviceArray GPU AcceleratedKernels")
display(@benchmark(rbf_ak!($zd, $vd)))


