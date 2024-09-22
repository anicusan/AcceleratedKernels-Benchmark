using DelimitedFiles
using CairoMakie
set_theme!(theme_latexfonts())


data = readdlm("benchmarks.csv")

irbf = [i for i in 2:size(data, 1) if occursin("RBF", data[i, 1])]
iljg = [i for i in 2:size(data, 1) if occursin("LJG", data[i, 1])]


assoc = Dict(
    "Apple_LJG_Base" => "Julia\nM3 Max\naarch64\n1 Thread",
    "Apple_LJG_C" => "C\nM3 Max\naarch64\n1 Thread",
    "Apple_LJG_C2" => "C v2\nM3 Max\naarch64\n1 Thread",
    "Apple_LJG_COMP" => "C OpenMP\nM3 Max\naarch64\n10 Threads",
    "Apple_LJG_AKCPU" => "AK CPU\nM3 Max\naarch64\n10 Threads",
    "Apple_LJG_AKGPU" => "AK GPU\nM3 GPU",

    "Apple_RBF_Base" => "Julia\nM3 Max\naarch64\n1 Thread",
    "Apple_RBF_C" => "C\nM3 Max\naarch64\n1 Thread",
    "Apple_RBF_COMP" => "C OpenMP\nM3 Max\naarch64\n10 Threads",
    "Apple_RBF_AKCPU" => "AK CPU\nM3 Max\naarch64\n10 Threads",
    "Apple_RBF_AKGPU" => "AK GPU\nM3 GPU",

    "BBIceLake_LJG_Base" => "Julia\nIntel 8360Y\nx86_64\n1 Thread",
    "BBIceLake_LJG_C" => "C\nIntel 8360Y\nx86_64\n1 Thread",
    "BBIceLake_LJG_C2" => "C v2\nIntel 8360Y\nx86_64\n1 Thread",
    "BBIceLake_LJG_COMP" => "C OpenMP\nIntel 8360Y\nx86_64\n10 Threads",
    "BBIceLake_LJG_AKCPU" => "AK CPU\nIntel 8360Y\nx86_64\n10 Threads",
    "BBAMD_LJG_AKGPU" => "AK GPU\nAMD MI210\nInstinct / gfx90a",
    "BBCUDA_LJG_AKGPU" => "AK GPU\nNVIDIA A100-40\nAmpere",

    "BBIceLake_RBF_Base" => "Julia\nIntel 8360Y\nx86_64\n1 Thread",
    "BBIceLake_RBF_C" => "C\nIntel 8360Y\nx86_64\n1 Thread",
    "BBIceLake_RBF_COMP" => "C OpenMP\nIntel 8360Y\nx86_64\n10 Threads",
    "BBIceLake_RBF_AKCPU" => "AK CPU\nIntel 8360Y\nx86_64\n10 Threads",
    "BBAMD_RBF_AKGPU" => "AK GPU\nAMD MI210\nInstinct / gfx90a",
    "BBCUDA_RBF_AKGPU" => "AK GPU\nNVIDIA A100-40\nAmpere",
)

fig = Figure(size = (1400, 500))

ax1 = Axis(
    fig[1, 1],
    ylabel="Time (ms)",

    title="a) Radial Basis Function Kernel",
    titlealign=:left,

    xgridvisible = false,
    yscale=log10,
    yminorgridvisible = true,
    yminorticks = IntervalsBetween(10),
    ytickformat = "{:2.0f}",
    yticks=[1, 10, 100, 1000],

    xticks=(1:length(irbf), [assoc[data[i, 1]] for i in irbf]),
    limits=((0.5, 13.5), (1, 1400))
)


barplot!(ax1, 1:length(irbf), [data[i, 2] for i in irbf])


ax2 = Axis(
    fig[2, 1],
    ylabel="Time (ms)",

    title="b) Lennard-Jones-Gauss Potential Kernel",
    titlealign=:left,

    xgridvisible = false,
    yscale=log10,
    yminorgridvisible = true,
    yminorticks = IntervalsBetween(10),
    ytickformat = "{:2.0f}",
    yticks=[1, 10, 100, 1000],

    xticks=(1:length(iljg), [assoc[data[i, 1]] for i in iljg]),
    limits=((0.5, 13.5), (1, 1400))
)


barplot!(ax2, 1:length(iljg), [data[i, 2] for i in iljg])

fig


