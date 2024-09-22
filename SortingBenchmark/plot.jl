using CSV
using Statistics
using DataFrames

using Colors
using CairoMakie
set_theme!(theme_latexfonts())



data = CSV.read("benchmark_data.csv", DataFrame, drop=[1])


algorithms = [
    "cpu_cpu_base",
    "gpu_cpu_akm",
    "gpu_cpu_bucm",
    "gpu_cpu_bucr",
    "gpu_gpu_akm",
    # "gpu_gpu2_akm",
    "gpu_gpu_bucm",
    "gpu_gpu_bucr",
]

dtypes = ["Int16", "Int32", "Int64", "Int128", "Float32", "Float64"]


struct AlgorithmData
    name::String
    marker::Symbol
    color::RGB
end

# cmap = distinguishable_colors(7)
cmap = [colorant"black"; Makie.categorical_colors(:Paired_6, 6)]
algorithm_data = Dict(
    "cpu_cpu_base" => AlgorithmData("CC-JB", :circle, cmap[1]),
    "gpu_cpu_akm" => AlgorithmData("GC-AK", :rect, cmap[2]),
    "gpu_cpu_bucm" => AlgorithmData("GC-TM", :utriangle, cmap[4]),
    "gpu_cpu_bucr" => AlgorithmData("GC-TR", :dtriangle, cmap[6]),
    "gpu_gpu_akm" => AlgorithmData("GG-AK", :diamond, cmap[3]),
    # "gpu_gpu2_akm" => AlgorithmData("GG-AK2", :hexagon, cmap[6]),
    "gpu_gpu_bucm" => AlgorithmData("GG-TM", :cross, cmap[5]),
    "gpu_gpu_bucr" => AlgorithmData("GG-TR", :xcross, cmap[7]),
)


# 1. Raw times (Int64 0.1 MB) (Float32 10 MB)
fig = Figure(size=(350, 700))

dtype = "Int64"
dsize = 0.1
s_algorithms = algorithms
ax = Axis(
    fig[1, 1],
    xlabel="Number of Ranks",
    ylabel="Time (ms)",
    title="a) $dtype - $dsize MB per Rank",
    titlealign=:left,
    limits=((-10, 210), nothing),
)

for (ialg, algorithm) in enumerate(s_algorithms)
    ad = algorithm_data[algorithm]
    selection = data[
        (data.algorithm .== algorithm) .&
        (data.dtype .== dtype) .&
        (data.dsize .== dsize),
        :
    ]
    xy = selection[:, [:nranks, :time]]
    scatter!(ax, xy[:, 1], 1000 .* xy[:, 2], marker=ad.marker, color=ad.color, label=ad.name, alpha=0.75)
end
axislegend(ax, position = :lt)


dtype = "Float32"
dsize = 10.0
ax = Axis(
    fig[2, 1],
    xlabel="Number of Ranks",
    ylabel="Time (ms)",
    title="b) $dtype - $dsize MB per Rank",
    titlealign=:left,
    limits=((-10, 210), nothing),
)

for (ialg, algorithm) in enumerate(s_algorithms)
    ad = algorithm_data[algorithm]
    selection = data[
        (data.algorithm .== algorithm) .&
        (data.dtype .== dtype) .&
        (data.dsize .== dsize),
        :
    ]
    xy = selection[:, [:nranks, :time]]
    scatter!(ax, xy[:, 1], 1000 .* xy[:, 2], marker=ad.marker, color=ad.color, label=ad.name, alpha=0.75)
end

save("plots/raw_times_low.png", fig)
fig


# 2. Raw times all GPUs at 1000 MB
fig = Figure(size=(350 * 3, 700))

dtypes = ["Int16", "Int32", "Int64", "Int128", "Float32", "Float64"]
dsize = 1000.0
s_algorithms = algorithms[2:end]


for (i, dtype) in enumerate(dtypes)

    irow = 1 + (i - 1) ÷ 3
    icol = 1 + (i - 1) % 3

    ax = Axis(
        fig[irow, icol],
        xlabel="Number of Ranks",
        ylabel="Time (ms)",
        title="$("abcdef"[i])) $dtype - $dsize MB per Rank",
        titlealign=:left,
        limits=((-10, 210), (-100, 2500)),
    )

    for (ialg, algorithm) in enumerate(s_algorithms)
        ad = algorithm_data[algorithm]
        selection = data[
            (data.algorithm .== algorithm) .&
            (data.dtype .== dtype) .&
            (data.dsize .== dsize),
            :
        ]
        xy = selection[:, [:nranks, :time]]
        scatter!(ax, xy[:, 1], 1000 .* xy[:, 2], marker=ad.marker, color=ad.color, label=ad.name, alpha=0.75)
    end
    i == 1 && axislegend(ax, position = :lt)
end

save("plots/raw_times_high_allgpus.png", fig)
fig


# 3. Raw times, one algorithm per subplot, all dtypes, all GPUs at 1000 MB
fig = Figure(size=(350 * 3, 700))

dtypes = ["Int16", "Int32", "Int64", "Int128", "Float32", "Float64"]
dsize = 1000.0
s_algorithms = algorithms[2:end]

for (i, algorithm) in enumerate(s_algorithms)

    irow = 1 + (i - 1) ÷ 3
    icol = 1 + (i - 1) % 3

    ax = Axis(
        fig[irow, icol],
        xlabel="Number of Ranks",
        ylabel="Time (ms)",
        title="$("abcdef"[i])) $(algorithm_data[algorithm].name) - $dsize MB per Rank",
        titlealign=:left,
        limits=((-10, 210), (-100, 2500)),
    )

    for (idtype, dtype) in enumerate(dtypes)
        ad = algorithm_data[s_algorithms[idtype]]
        selection = data[
            (data.algorithm .== algorithm) .&
            (data.dtype .== dtype) .&
            (data.dsize .== dsize),
            :
        ]
        xy = selection[:, [:nranks, :time]]
        scatter!(ax, xy[:, 1], 1000 .* xy[:, 2], marker=ad.marker, color=ad.color, label=dtype, alpha=0.75)
    end
    i == 6 && axislegend(ax, position = :rt)
end

save("plots/raw_times_dtypes.png", fig)
fig


# 4. Weak scaling
fig = Figure(size=(350 * 3, 700))

dtypes = ["Int16", "Int32", "Int64", "Int128", "Float32", "Float64"]
dsize = 1000.0
s_algorithms = algorithms[2:end]

for (i, algorithm) in enumerate(s_algorithms)

    irow = 1 + (i - 1) ÷ 3
    icol = 1 + (i - 1) % 3

    ax = Axis(
        fig[irow, icol],
        xlabel="Number of Ranks",
        ylabel="Weak Scaling Efficiency",
        title="$("abcdef"[i])) $(algorithm_data[algorithm].name) - $dsize MB per Rank",
        titlealign=:left,
        limits=((-10, 210), (0, 1.1)),
    )

    for (idtype, dtype) in enumerate(dtypes)
        ad = algorithm_data[s_algorithms[idtype]]
        selection = data[
            (data.algorithm .== algorithm) .&
            (data.dtype .== dtype) .&
            (data.dsize .== dsize),
            :
        ]
        xy = selection[:, [:nranks, :time]]
        xy[:, 2] .= mean(xy[2:20, 2]) ./ xy[:, 2]
        scatter!(ax, xy[:, 1], xy[:, 2], marker=ad.marker, color=ad.color, label=dtype, alpha=0.75)
    end
    i == 1 && axislegend(ax, position = :lb)
end

save("plots/weak_scaling.png", fig)
fig


# 5. Strong scaling
fig = Figure(size=(350 * 3, 700))

dtypes = ["Int16", "Int32", "Int64", "Int128", "Float32", "Float64"]
dsize = 16_000.0
s_algorithms = algorithms[2:end]

for (i, dtype) in enumerate(dtypes)

    irow = 1 + (i - 1) ÷ 3
    icol = 1 + (i - 1) % 3

    ax = Axis(
        fig[irow, icol],
        xlabel="Number of Ranks",
        ylabel="Time (ms)",

        yscale=log10,
        yminorgridvisible = true,
        yminorticks = IntervalsBetween(10),
        ytickformat = "{:2.0f}",

        title="$("abcdef"[i])) $(dtype) - 16 GB Divided Over Ranks",
        titlealign=:left,
        limits=((-10, 210), (10, 5000)),
    )

    for (ialg, algorithm) in enumerate(s_algorithms)

        ad = algorithm_data[algorithm]
        selection = data[
            (data.algorithm .== algorithm) .&
            (data.dtype .== dtype) .&
            (data.dsize .≈ (dsize ./ data.nranks)),
            :
        ]
        xy = selection[:, [:nranks, :time]]

        # For speed-up
        # xy[:, 2] .= mean(xy[1:12, 2]) ./ xy[:, 2]
        scatter!(ax, xy[:, 1], 1000 .* xy[:, 2], marker=ad.marker, color=ad.color, label=ad.name, alpha=0.75)
    end

    i == 1 && axislegend(ax, position = :rt)
end

save("plots/strong_scaling.png", fig)
fig


# 6. Throughput
data2 = copy(data)
data2.throughput = data.nranks .* data.dsize ./ data.time


s_algorithms = [
    "cpu_cpu_base",
    "gpu_cpu_akm", "gpu_gpu_akm",
    "gpu_cpu_bucm", "gpu_gpu_bucm",
    "gpu_cpu_bucr", "gpu_gpu_bucr",    
]
tmaxes = Float64[]
tdesc = String[]
for (ialg, algorithm) in enumerate(s_algorithms)
    selection = data2[data2.algorithm .== algorithm, :]
    best = selection[argmax(selection.throughput), :]
    display(best)

    push!(tmaxes, best.throughput / 1000)
    push!(tdesc, "$(algorithm_data[algorithm].name)\n$(best.dtype)\n$(best.nranks) Ranks\n$(best.dsize) MB")
end


fig = Figure(size=(350 * 2, 350))
ax = Axis(
    fig[1, 1],
    ylabel="Throughput (GB / s)",

    # yminorgridvisible = true,
    # yminorticks = IntervalsBetween(4),

    yscale=log10,
    yminorgridvisible = true,
    yminorticks = IntervalsBetween(10),
    ytickformat = "{:2.0f}",
    yticks=[10, 100, 1000],

    xticks=(1:length(tdesc), tdesc),
    limits=(nothing, (10, 1200))
)


barplot!(ax, 1:length(tmaxes), tmaxes, color=[algorithm_data[alg].color for alg in s_algorithms])

save("plots/throughput.png", fig)
fig


# 7. Cost, from previous, April run
using TOML

data_april = TOML.parsefile("BaskervilleFewGPUs/varyn/varyn.toml")

ranks = 8
dtypes = ["float32", "int64"]
archs = ["cpucpu", "gpucpu", "gpugpu"]
arch_names = ["CPU-CPU", "GPU-CPU (MPI / CPU Transfer)", "GPU-GPU (MPI / GPUDirect)"]

gpu_cpu_price_ratio = 22.0


fig = Figure(size=(400, 800))

for (i, dtype) in enumerate(dtypes)

    num_elements = data_april["N"]

    ax = Axis(
        fig[i, 1],
        xlabel="Number of Elements",
        ylabel="Sorting Time Normalised by Price per Core",

        title="$("abcdef"[i])) $(["Float32", "Int64"][i]) - Elements Split Over 8 Ranks",
        titlealign=:left,

        xscale=log10,
        xminorgridvisible = true,
        xminorticks = IntervalsBetween(10),

        yscale=log10,
        yminorgridvisible = true,
        yminorticks = IntervalsBetween(10),

        limits=((5e2, 2e9), (1e-4, 1e3)),
    )
    

    for (iarch, arch) in enumerate(archs)

        key = "$(arch)_$(ranks)_$(dtype)"
        y = [d["median"] / 1e9 for d in data_april[key]]

        if startswith(arch, "gpu")
            y *= gpu_cpu_price_ratio
        end

        ads = [
            algorithm_data["cpu_cpu_base"],
            algorithm_data["gpu_cpu_akm"],
            algorithm_data["gpu_gpu_akm"],
        ]
        scatter!(ax, num_elements, y, label = arch_names[iarch], color=ads[iarch].color, marker=ads[iarch].marker)
        lines!(ax, num_elements, y, color=ads[iarch].color)
    end

    i == 1 && axislegend(ax, position = :lt)
end

save("plots/cost.png", fig)
fig


