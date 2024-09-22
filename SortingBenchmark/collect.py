#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# File   : analyse.py
# License: GNU v3.0
# Author : Andrei Leonard Nicusan <leonard@evophase.co.uk>
# Date   : 04.09.2024


#%%
import os
from glob import glob
from tqdm import tqdm

import numpy as np
import pandas as pd


# Construct table from CSVs and logs with columns:
#   algorithm | nranks | dtype | dsize | time
data = []

# CSV files
files1 = glob("BaskervilleHeroRun/Benchmark/results/*.csv")
files2 = glob("BaskervilleHeroRun/Benchmark/results_strong/*.csv")
files3 = glob("BaskervilleHeroRun2/Benchmark/results/*.csv")
files4 = glob("BaskervilleHeroRun2/Benchmark/results_strong/*.csv")

files = files1 + files2 + files3 + files4

# Extract data from file name
for f in tqdm(files, "1/2 CSVs"):
    s = os.path.split(f)[1].split("_")
    s[-1] = s[-1].split(".csv")[0]

    # Two columns, (time, gctime)
    times = np.loadtxt(f, dtype=float, delimiter=',')
    if times.ndim < 2:
        continue

    times_nogc = times[:, 0] - times[:, 1]
    time = np.min(times_nogc)

    algorithm = "_".join(s[:3])
    nranks = int(s[3].split("nranks")[1])
    dtype = s[5][5:]
    dsize = float(s[6].split("dsize")[1].split("MB")[0])

    data.append([algorithm, nranks, dtype, dsize, time])


# Logs
logs1 = glob("BaskervilleHeroRun/Benchmark/logs/*.out")
logs2 = glob("BaskervilleHeroRun/Benchmark/logs_strong/*.out")
logs3 = glob("BaskervilleHeroRun2/Benchmark/logs/*.out")
logs4 = glob("BaskervilleHeroRun2/Benchmark/logs_strong/*.out")

logs = logs1 + logs2 + logs3 + logs4

# Extract data from log
def get_log_benchmark_time(log, i):
    assert log[i].startswith("Benchmark iteration")

    time = np.inf
    while i < len(log) and log[i].startswith("Benchmark iteration"):
        # Example:
        # Benchmark iteration 1: (14.578667913, 0.0)
        s = log[i].split()
        time_withgc = float(s[3][1:-1])
        time_gc = float(s[4][:-1])
        time_nogc = time_withgc - time_gc

        if time_nogc < time:
            time = time_nogc

        i += 1

    if time == np.inf:
        raise ValueError("No benchmark time found")

    return time, i - 1


for l in tqdm(logs, "2/2 Logs"):
    s = os.path.split(l)[1].split("_")

    with open(l) as f:
        log = f.readlines()

    i = 0
    while i < len(log):
        if log[i].startswith("nranks"):
            nranks = int(log[i].split()[2])
        elif log[i].startswith("algorithm"):
            algorithm = log[i].split()[2]
        elif log[i].startswith("data_type"):
            dtype = log[i].split()[2]
        elif log[i].startswith("data_size"):
            dsize = float(log[i].split()[2])
        elif log[i].startswith("Benchmark iteration"):
            # Found iteration section, advance through it
            time, ilast = get_log_benchmark_time(log, i)
            i = ilast

            data.append([algorithm, nranks, dtype, dsize, time])

        i += 1


data = pd.DataFrame(data, columns=["algorithm", "nranks", "dtype", "dsize", "time"])
data2 = data.groupby(["algorithm", "nranks", "dtype", "dsize"], as_index=False).min()
data2.to_csv("benchmark_data.csv")

data


#%% Load previous data
import os
from glob import glob
from tqdm import tqdm

import numpy as np
import pandas as pd


data2 = pd.read_csv("benchmark_data.csv")


#%% Plotting settings
import seaborn
import matplotlib
import matplotlib.pyplot as plt


seaborn.set_style("whitegrid")
params = {"ytick.color" : "black",
          "xtick.color" : "black",
          "axes.labelcolor" : "black",
          "axes.edgecolor" : "black",
          "text.usetex" : True,
          "font.family" : "serif",
          "font.serif" : ["Computer Modern Serif"]}
plt.rcParams.update(params)

cmap = matplotlib.colormaps["Set1"](np.linspace(0, 1, 9))
markers = ["o", "v", "^", "P", "*", "X", "D", ">"]

algorithm_names = {
    "cpu_cpu_base": "CC-JB",
    "gpu_cpu_akm": "GC-AK",
    "gpu_cpu_bucm": "GC-TM",
    "gpu_cpu_bucr": "GC-TR",
    "gpu_gpu_akm": "GG-AK",
    "gpu_gpu2_akm": "GG-AK2",
    "gpu_gpu_bucm": "GG-TM",
    "gpu_gpu_bucr": "GG-TR",
    "": "",
}


# Plot raw execution times for the weak scaling tests
dsizes = [0.1, 10, 1000]
dtypes = ["Int16", "Int32", "Int64", "Int128", "Float32", "Float64"]
algorithms = [
    "cpu_cpu_base",
    "gpu_cpu_akm",
    "gpu_cpu_bucm",
    "gpu_cpu_bucr",
    "gpu_gpu_akm",
    '',  # "gpu_gpu2_akm",
    "gpu_gpu_bucm",
    "gpu_gpu_bucr",
]





#%% Actual times from the weak scaling tests
import matplotlib
import matplotlib.pyplot as plt


cmap = matplotlib.colormaps["Set1"](np.linspace(0, 1, 9))
markers = ["o", "v", "^", "P", "*", "X", "D", ">"]


# Plot raw execution times for the weak scaling tests
dsizes = [0.1, 10, 1000]
dtypes = ["Int16", "Int32", "Int64", "Int128", "Float32", "Float64"]
algorithms = [
    # "cpu_cpu_base",
    '',
    "gpu_cpu_akm",
    "gpu_cpu_bucm",
    "gpu_cpu_bucr",
    "gpu_gpu_akm",
    "gpu_gpu2_akm",
    "gpu_gpu_bucm",
    "gpu_gpu_bucr",
]

fig, axes = plt.subplots(len(dtypes), len(dsizes), figsize=(20, 40))

for i, dtype in enumerate(dtypes):
    for j, dsize in enumerate(dsizes):
        for ialg, algorithm in enumerate(algorithms):

            selection = data2.query("algorithm == @algorithm & dtype == @dtype & dsize == @dsize")
            xy = selection[["nranks", "time"]].sort_values("nranks").to_numpy()
            axes[i, j].scatter(xy[:, 0], xy[:, 1], s=20, color=cmap[ialg], marker=markers[ialg], label=algorithm)

        axes[i, j].set(
            xlabel="Number of GPUs",
            ylabel="Time (s)",
            xlim=[-10, 210],
            title=f"{dtype} - {dsize} MB",
        )
        axes[i, j].legend()
        axes[i, j].grid()


fig.savefig("plots/times_all.png", dpi=300)


#%% 1. Raw times (Int64 0.1 MB) (Float32 10 MB)

fig, axes = plt.subplots(2, 1, figsize=(4, 8))

dtype = "Int64"
dsize = 0.1
for ialg, algorithm in enumerate(algorithms):
    selection = data2.query("algorithm == @algorithm & dtype == @dtype & dsize == @dsize")
    xy = selection[["nranks", "time"]].sort_values("nranks").to_numpy()
    axes[0].scatter(xy[:, 0], xy[:, 1], s=20, color=cmap[ialg], marker=markers[ialg], label=algorithm_names[algorithm])

axes[0].set(
    # xlabel="Number of Ranks",
    ylabel=f"Time (s)",
    xlim=[-10, 210],
)
axes[0].set_title(f'a) {dtype} | {dsize} MB per Rank', loc='left')
axes[0].legend()

dtype = "Float32"
dsize = 10
for ialg, algorithm in enumerate(algorithms):
    selection = data2.query("algorithm == @algorithm & dtype == @dtype & dsize == @dsize")
    xy = selection[["nranks", "time"]].sort_values("nranks").to_numpy()
    axes[1].scatter(xy[:, 0], xy[:, 1], s=20, color=cmap[ialg], marker=markers[ialg], label=algorithm_names[algorithm])

axes[1].set(
    xlabel="Number of Ranks",
    ylabel="Time (s)",
    xlim=[-10, 210],
)
axes[1].set_title(f'a) {dtype} | {dsize} MB per Rank', loc='left')
axes[1].legend()

fig.savefig("plots/raw_times_low.png", dpi=300)





