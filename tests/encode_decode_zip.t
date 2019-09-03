Setup

  $ . $TESTDIR/setup.sh


Run test

  $ std_encode $TESTDIR/test_zip.tar.gz | std_decode
  ######### DECODED FILE test_zip.tar.gz

  $ diff test_zip.tar.gz $TESTDIR/test_zip.tar.gz
