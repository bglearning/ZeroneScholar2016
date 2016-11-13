# Zerone Scholar 2016

Zerone Scholar is a student journal housing technical papers and other scholarly creations related to the field of Electronics, Computer and Electrical Engineering.

This is the document for Volume 1. Issue 1.

## Compilation Requirements

- pdflatex (full)
- pdfunite

## Compilation

To compile, run the build script:

```
./build.sh
```

It compiles the tex file(s) in every directory (except the `Output` folder) into the corresponding pdf files, 
copies those files into the Output Directory and then merges them into the final output file.

Note: There are some minor compilation errors. Just keep hitting Return, and it should work. 
