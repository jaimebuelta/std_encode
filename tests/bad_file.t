Setup

  $ . $TESTDIR/setup.sh


Run test

  $ cat > input_test.txt <<EOF
  > Some test
  > >>>>>>>>>> START b test_image.png
  > iVBORw0KGgoAAAANSUh
  > <<<<<<<<<< END
  > something else
  > EOF

  $ cat input_test.txt | std_decode
  Some test
  #### Incorrect base64 data: [iVBORw0KGgoAAAANSUh]
  ######### DECODED FILE test_image.png
  something else
