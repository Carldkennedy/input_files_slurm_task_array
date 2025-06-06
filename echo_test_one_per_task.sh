#!/bin/bash
#SBATCH --job-name=echo-one
#SBATCH --array=0-99     # 100 tasks, one per file
#SBATCH --time=00:01:00
#SBATCH --mem=100M
#SBATCH --cpus-per-task=1
#SBATCH --output=logs/test1_%A_%a.out
#SBATCH --error=logs/test1_%A_%a.err

mapfile -t paths < input_files.txt

input_file="${paths[$SLURM_ARRAY_TASK_ID]}"
echo "Would run: $input_file"

echo_test_one_per_task.sh: Using a text file containing filenames of input
files.
