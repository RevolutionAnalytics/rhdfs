# R Package

This directory contains the code to build the R package.  The build is described 
in the BUILD file.

## Java Issues

You may run into rJava issues.  The follow guide may be of help:

* Execute the command, `R CMD javareconf`

* Install `rJava` and compile it, `R --quiet -e 'install.packages("rJava", type="source", repos="http://cran.us.r-project.org")'
`

* Test to see if rJava can be loaded now, `R --quiet -e 'library("rJava"); .jinit(); .jcall("java/lang/System", "S", "getProperty", "java.runtime.version")'
`

# Installation

You must ensure that the environment variable, `HADOOP_CMD` has been set in your environment.  If it is not, you will encounter issues installing.  The error will be exhibited by a message of the form:

```
Error : .onLoad failed in loadNamespace() for 'rhdfs', details:
  call: fun(libname, pkgname)
  error: Environment variable HADOOP_CMD must be set before loading package rhdfs
Error: loading failed
```

## Author(s)

Stewart Henderson <stewart.henderson@protonmail.com>