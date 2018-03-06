# rhdfs

This repository provides an R package for interacting with Hadoop Distributed File System (HDFS).

[![Build Status](https://travis-ci.org/bowlofstew/rhdfs.svg?branch=master)](https://github.com/bowlofstew/rhdfs)

## Compilation Requirements

The basic project requirements are as follows:

* [JDK](https://java.com/en/download/)

* [Bazel](https://bazel.build/)

* [R](https://www.r-project.org/)

## Compilation

In order to compile the package, execute the command, `bazel build //...` and this 
will build the R package and its Java dependency.

## Publishing to CRAN

1. Execute the command, `bazel build //..`.

2. From the top level project directory, execute the command, `R CMD check --as-cran pkg/`

3. In a web browser, navigate to `http://cran.r-project.org/submit.html` and create a submission for your package.

## Dependency Analysis

In order to perform a dependency analysis of the project, you will need to meet an extra requirement of:

* [GraphViz Dot Compiler](https://www.graphviz.org/)

Once the dependency is satisified, you can execute the following commands to create a depedency graph:

    bazel query 'deps(//pkg:rhdfs)' --output graph > graph.in

    dot -Tpng < graph.in > graph.png

## Author(s)

Stewart Henderson <stewart.henderson@protonmail.com>