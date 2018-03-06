package(default_visibility = ["//visibility:public"])

SOURCES = glob(
    ["**"],
    exclude = [
        "BUILD",
    ],
)

java_library(
    name = "rhdfs_lib",
    srcs = SOURCES,
    deps = [
        "@org_apache_hadoop_hadoop_core//jar"
    ],
)