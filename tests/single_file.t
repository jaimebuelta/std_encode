Setup

  $ . $TESTDIR/setup.sh


Run test

  $ cat > input_test.txt <<EOF
  > Some test
  > >>>>>>>>>> START t test.txt
  > testing
  > <<<<<<<<<< END
  > something else
  > EOF

  $ cat input_test.txt | std_decode
  Some test
  ######### DECODED FILE test.txt
  something else

  $ cat test.txt
  testing
