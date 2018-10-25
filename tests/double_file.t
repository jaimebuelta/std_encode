Setup

  $ . $TESTDIR/setup.sh


Run test

  $ cat > input_test.txt <<EOF
  > Some test
  > >>>>>>>>>> START t test.txt
  > testing
  > <<<<<<<<<< END
  > something else
  > >>>>>>>>>> START t test2.txt
  > testing something
  > else
  > <<<<<<<<<< END
  > and the coda
  > EOF

  $ cat input_test.txt | std_decode
  Some test
  something else
  and the coda

  $ cat test.txt
  testing

  $ cat test2.txt
  testing something
  else
