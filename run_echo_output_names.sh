#!/bin/bash
#SBATCH --job-name=echo-named
#SBATCH --array=0-99     # adjust if needed
#SBATCH --time=00:01:00
#SBATCH --mem=100M
#SBATCH --cpus-per-task=1
#SBATCH --output=logs/%A_%a.log
#SBATCH --error=logs/%A_%a.err

mapfile -t paths < input_files.txt

input_file="${paths[$SLURM_ARRAY_TASK_ID]}"
base=$(basename "$input_file")
outfile="${input_file}.out"

echo "Processing: $input_file" > "$outfile"

