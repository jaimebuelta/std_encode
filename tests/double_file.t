Setup

  $ . $TESTDIR/setup.sh


Run test

  $ cat > input_test.txt <<EOF
  > Some test
  > >>>>>>>>>> START test.txt
  > testing
  > <<<<<<<<<< END
  > something else
  > >>>>>>>>>> START test2.txt
  > testing something
  > else
  > <<<<<<<<<< END
  > and the coda
  > EOF

  $ cat input_test.txt | $SE
  Some test
  something else
  and the coda

  $ cat test.txt
  testing

  $ cat test2.txt
  testing something
  else
