package(default_visibility = ["//visibility:public"])

load("@com_grail_rules_r//R:defs.bzl", "r_package")

r_package(
        pkg_name = "rhdfs", 
        pkg_srcs = glob(
            ["**"],
            exclude = [
                "BUILD",
                "README.md",
                ".gitignore",
                ".Rbuildignore",
                "rplatform.Rproj",
                ".Rproject.user"
            ],
        ), 
        pkg_deps = [
            "@R_rJava//:rJava",
            "@R_biglm//:biglm",
        ],
        pkg_suggested_deps = [
            "//java/com/revolutionanalytics/hadoop/hdfs:rhdfs_lib"
        ]
)