num=$1
echo "step $num" > input.txt

make clean
make

./test_jenk_proj > test_out
diff output.txt test_out
