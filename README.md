# std_encode

Encode and decode files through standard input/output.

## Usage

Encode files piping them into `std_encode`

```
$ std_encode -t input_test.txt
>>>>>>>>>> START t input_test.txt
Some test
text file
<<<<<<<<<< END
```

The encoded text can be then decoded and saved with `std_decode`

```
$ std_encode -t input_test.txt | std_decode
$ cat input_test.txt
Some test
text file
```

## Features

- Text and binary files are supported (binary are default).
- `std_decode` is capable of decoding more than one file in the same stream
- Any line in the stream that's not part of a file will be replicated in the standard output.

## Why is this useful for?

In some cases, standard input/output is a convenient and easy way of communication. Transfering a file is not as simple.

For example, the problem that originated it was to retrieve files from a docker container running in Kubernetes. Obtaining the text log is easy calling `docker logs` or `kubectl logs`, but retrieving files requires more plumbing.

In the operation, while creating logs, multiple files can be encoded, and then all will be retrieved piping the logs through `std_decode`.
