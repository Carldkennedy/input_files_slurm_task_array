#!/bin/bash
#SBATCH --job-name=echo-test
#SBATCH --array=0-9     # 10 tasks
#SBATCH --time=00:01:00
#SBATCH --mem=100M
#SBATCH --cpus-per-task=1
#SBATCH --output=logs/test_%A_%a.out
#SBATCH --error=logs/test_%A_%a.err

FILES_PER_TASK=10

mapfile -t paths < input_files.txt
start=$((SLURM_ARRAY_TASK_ID * FILES_PER_TASK))
end=$((start + FILES_PER_TASK - 1))

for i in $(seq "$start" "$end"); do
  [ -z "${paths[$i]}" ] && continue
  echo "Would run: ${paths[$i]}"
done

