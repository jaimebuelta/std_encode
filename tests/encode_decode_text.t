Setup

  $ . $TESTDIR/setup.sh


Run test

  $ cat > input_test.txt <<EOF
  > Some test
  > text file
  > EOF

  $ std_encode input_test.txt | std_decode

  $ cat input_test.txt
  Some test
  text file
