#!/bin/bash

# Function to get the number of CPU cores
get_cpu_cores() {
    nproc
}

# Function to get the number of threads per core
get_threads_per_core() {
    lscpu | grep "^Thread(s) per core:" | awk '{print $4}'
}

# Function to get total RAM in GB
get_total_ram() {
    free -g | grep "^Mem:" | awk '{print $2}'
}

# Function to recommend optimal parallel jobs
recommend_parallel_jobs() {
    local cores=$1
    local threads=$2
    local optimal_jobs=$((cores * threads))
    echo "Optimal parallel jobs for Intel processors: $optimal_jobs"
}

# Main script execution
cpu_cores=$(get_cpu_cores)
threads_per_core=$(get_threads_per_core)
total_ram=$(get_total_ram)

echo "CPU Cores: $cpu_cores"
echo "Threads per Core: $threads_per_core"
echo "Total RAM: ${total_ram}GB"

recommend_parallel_jobs $cpu_cores $threads_per_core
