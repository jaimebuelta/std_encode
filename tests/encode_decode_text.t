Setup

  $ . $TESTDIR/setup.sh


Run test

  $ cat > input_test.txt <<EOF
  > Some test
  > text file
  > EOF

  $ std_encode -t input_test.txt | std_decode
  ######### DECODED FILE input_test.txt

  $ cat input_test.txt
  Some test
  text file
