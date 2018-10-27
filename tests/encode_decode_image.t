Setup

  $ . $TESTDIR/setup.sh


Run test

  $ std_encode $TESTDIR/test_image.png | std_decode
  ######### DECODED FILE test_image.png

  $ diff test_image.png $TESTDIR/test_image.png
