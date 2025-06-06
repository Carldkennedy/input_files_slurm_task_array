# SLURM Task Array Input File Examples

This repository demonstrates how to use SLURM job arrays to process multiple input files efficiently.

## Overview

The scripts included illustrate how to:

- Setup including generate a list of input files
- Use `SLURM_ARRAY_TASK_ID` to assign files to array tasks
- Manage output and log files systematically

## Setup

1. Create directories and generate some test input `.inp` files:

To run through the examples in this repo, we create `logs` and `test_inputs` directories, 
and files with non-sequential names by running the `setup.sh` script.

```bash
source setup.sh
```

2. Submit each SLURM job array, for example:

```bash
sbatch echo_test_one_per_task.sh`
```

After each task array has finished inspect output files in `logs` and `test_inputs`.

## Files
`echo_test_one_per_task.sh`: Processes input files listed in a text file, one
per task.

`run_echo_output_names.sh`: Like `echo_test_one_per_task.sh` but writes
output to files named `<input_filename>.out`.

`echo_test_array_batch.sh`: Uses chunking to process multiple files per task -
especially useful when tasks take less than 30 minutes each.

## License
MIT License

