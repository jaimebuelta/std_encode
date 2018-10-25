Setup

  $ . $TESTDIR/setup.sh


Run test

  $ cat > input_test.txt <<EOF
  > Some test
  > >>>>>>>>>> START test.txt
  > testing
  > <<<<<<<<<< END
  > something else
  > EOF

  $ cat input_test.txt | std_decode
  Some test
  something else

  $ cat test.txt
  testing
