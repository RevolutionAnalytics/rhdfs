# Copyright 2011 Revolution Analytics
#    
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#      http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

 
library(utils)
.hdfsEnv <- new.env()
.onLoad <- function(libname,pkgname) {
  vrs <- packageDescription(pkgname, lib.loc = libname, fields = "Version",
                            drop = TRUE)
  if (Sys.getenv("HADOOP_CMD") == "") {
    HADOOP_VERSION = "2.6.0"
    CLOUDERA_VERSION = "5.13.0"
    CLOUDERA_HADOOP_INSTALLATION_DIR = sprintf("/opt/hadoop-%s-cdh%s", HADOOP_VERSION, CLOUDERA_VERSION)
    if (!dir.exists(CLOUDERA_HADOOP_INSTALLATION_DIR)) {
      Sys.setenv(HADOOP_CMD = sprintf("/opt/hadoop-%s-cdh%s/bin/hadoop", HADOOP_VERSION, CLOUDERA_VERSION))
    }
  }
  packageStartupMessage("\nHADOOP_CMD=", Sys.getenv("HADOOP_CMD"))
  packageStartupMessage("\nBe sure to run hdfs.init()")
}
