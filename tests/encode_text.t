Setup

  $ . $TESTDIR/setup.sh


Run test

  $ cat > input_test.txt <<EOF
  > Some test
  > text file
  > EOF

  $ std_encode -t input_test.txt
  >>>>>>>>>> START t input_test.txt
  Some test
  text file
  <<<<<<<<<< END
