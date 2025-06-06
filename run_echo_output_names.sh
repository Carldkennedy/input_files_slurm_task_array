#!/bin/bash
#SBATCH --job-name=echo-named
#SBATCH --array=0-99     # adjust if needed
#SBATCH --time=00:01:00
#SBATCH --mem=100M
#SBATCH --cpus-per-task=1
#SBATCH --output=logs/%A_%a.log
#SBATCH --error=logs/%A_%a.err

mapfile -t paths < fst_files.txt

fst_file="${paths[$SLURM_ARRAY_TASK_ID]}"
base=$(basename "$fst_file")
outfile="${fst_file}.out"

echo "Processing: $fst_file" > "$outfile"

