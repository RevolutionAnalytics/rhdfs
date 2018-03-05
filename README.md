# rhdfs

This repository provides an R package for interacting with Hadoop Distributed File System (HDFS).

## Compilation Requirements

The basic project requirements are as follows:

* [JDK](https://java.com/en/download/)

* [Bazel](https://bazel.build/)

* [R](https://www.r-project.org/)

## Compilation

In order to compile the package, execute the command, `bazel build //...` and this 
will build the R package and its Java dependency.

## Dependency Analysis

In order to perform a dependency analysis of the project, you will need to meet an extra requirement of:

* [GraphViz Dot Compiler](https://www.graphviz.org/)

Once the dependency is satisified, you can execute the following commands to create a depedency graph:

    `bazel query 'deps(//pkg:rhdfs)' --output graph > graph.in`

    `dot -Tpng < graph.in > graph.png`

This will yield a dependency graph similar to:

![Dependencies](https://octodex.github.com/images/yaktocat.png)

## Author(s)

Stewart Henderson <stewart.henderson@uptake.com>