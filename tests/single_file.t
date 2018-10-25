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

  $ cat input_test.txt | $SE
  Some test
  something else

  $ cat test.txt
  testing
