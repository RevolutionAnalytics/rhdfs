workspace(name = "rhdfs")

# Bazel Rules
RULES_R_COMMIT="6c6a0536c829e59c1ddcb3a96df0376342f66bf9"

git_repository(
    name = "com_grail_rules_r",
    remote = "https://github.com/grailbio/rules_r.git",
    commit = RULES_R_COMMIT,  
)

# Java, Maven Dependencies
maven_jar(
    name = "org_apache_hadoop_hadoop_core",
    artifact = "org.apache.hadoop:hadoop-core:1.2.1",
)

# R Dependencies
CRAN_BASE_URL="https://cloud.r-project.org/src/contrib"
CRAN_PACKAGE="tar.gz"
RJAVA_VERSION="0.9-9"
DBI_VERSION="0.8"
BIGLM_VERSION="0.9-1"

new_http_archive(
    name = "R_rJava",
    build_file = "cran/BUILD.rJava",
    strip_prefix = "rJava",
    urls = [
        "{}/rJava_{}.{}".format(CRAN_BASE_URL, RJAVA_VERSION, CRAN_PACKAGE)
    ],
)

new_http_archive(
    name = "R_DBI",
    build_file = "cran/BUILD.DBI",
    strip_prefix = "DBI",
    urls = [
        "{}/DBI_{}.{}".format(CRAN_BASE_URL, DBI_VERSION, CRAN_PACKAGE)
    ],
)

new_http_archive(
    name = "R_biglm",
    build_file = "cran/BUILD.biglm",
    strip_prefix = "biglm",
    urls = [
        "{}/biglm_{}.{}".format(CRAN_BASE_URL, BIGLM_VERSION, CRAN_PACKAGE)
    ],
)