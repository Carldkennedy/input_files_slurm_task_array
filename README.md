# SLURM Task Array Input File Examples

This repository demonstrates how to use SLURM job arrays to process multiple input files efficiently.

## Overview

The scripts included illustrate how to:

- Setup including generate a list of input files
- Use `SLURM_ARRAY_TASK_ID` to assign files to array tasks
- Manage output and log files systematically

## Setup

1. Create directories and generate some test input `.inp` files:

To run through the examples in this repo, we need to create logs directory and test_inputs dir with random file names.

```bash
source setup.sh
```

2. Submit the SLURM job array:

```bash
sbatch echo_test_one_per_task.sh`
```

## Files
`echo_test_one_per_task.sh`: Processes input files listed in a text file, one
per task.

`run_echo_output_names.sh`: Like `echo_test_one_per_task.sh` but writes
output to files named `<input_filename>.out`.

`echo_test_array_batch.sh`: Uses chunking to process multiple files per task -
especially useful when tasks take less than 30 minutes each.

## License
MIT License

