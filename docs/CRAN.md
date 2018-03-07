# Publishing to CRAN

1. Execute the command, `bazel build //..`.

2. From the top level project directory, execute the command, `R CMD check --as-cran pkg/`

3. In a web browser, navigate to `http://cran.r-project.org/submit.html` and create a submission for your package.

## Author(s)

Stewart Henderson <stewart.henderson@protonmail.com>