# Make directories for log files
mkdir -p logs

# Create some random files to read
mkdir -p test_inputs
for name in a b c d e f g h i j; do
  for i in $(seq 1 10); do
    touch "test_inputs/${name}_$i.inp"
  done
done

# Create list of files and output to txt file
find $PWD/test_inputs -name "*.inp" | sort > input_files.txt

