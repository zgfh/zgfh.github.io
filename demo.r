if (nchar(Sys.getenv("SPARK_HOME")) < 1) {
  Sys.setenv(SPARK_HOME = "/usr/local/spark/")
}
library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib")))
sparkR.session(master = "spark://csp-dev-1-1-csp-adapter:7077", sparkConfig = list(spark.driver.memory = "2g",spark.app.name="jupyter-sparkR",spark.sql.catalogImplementation="hive",spark.yarn.keytab=Sys.getenv("KEYTAB"),spark.yarn.principal=Sys.getenv("PRINCIPAL")))
# Queries can be expressed in HiveQL.
sql("show tables")

