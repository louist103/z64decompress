# z64decompress

`z64decompress` is a program for decompressing retail Zelda 64 rom files, as well as individual files, including those compressed with [`z64compress`](https://github.com/z64me/z64compress) and its many encoding formats (`yaz`, `lzo`, `ucl`, and `aplib`). The decoders are adapted from those in my [`z64enc`](https://github.com/z64me/z64enc) repo.

## Usage
`z64decompress [file-in] [file-out] [options]`

The `[file-out]` argument is optional if you do not use any options.
If not specified, `file-in.decompressed.extension` will be generated.
Alternatively, Windows users can drop an input rom directly
onto the executable.

Options:
```
-h, --help         show help information
-c, --codec        manually choose the decompression codec
-i, --individual   decompress a compressed file-in into file-out (rather than a full rom)
-d, --dmaext       decompress rom using the ZZRTL dmaext hack
```

Examples:
```
z64decompress "rom-in.z64" "rom-out.z64"
z64decompress "file-in.yaz" "file-out.bin" -c yaz -i
```



## Building
I have included shell scripts for building Linux and Windows binaries. Windows binaries are built using a cross compiler ([I recommend `MXE`](https://mxe.cc/)).

