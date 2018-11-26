if (nchar(Sys.getenv("SPARK_HOME")) < 1) {
  Sys.setenv(SPARK_HOME = "/usr/local/spark/")
}
library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib")))
sparkR.session(master = "spark://csp-dev-1-1-csp-adapter:7077", sparkConfig = list(spark.driver.memory = "2g",spark.app.name="jupyter-sparkR",spark.sql.catalogImplementation="hive",spark.yarn.keytab=Sys.getenv("KEYTAB"),spark.yarn.principal=Sys.getenv("PRINCIPAL")))
# Queries can be expressed in HiveQL.
sql("CREATE TABLE IF NOT EXISTS mapr(id INT, name STRING)")
sql("LOAD DATA LOCAL INPATH '/usr/local/spark/examples/src/main/resources/kv1.txt' INTO TABLE mapr")
employeeCount <- sql("SELECT count(*) from mapr")
# results is now a SparkDataFrame
head(employeeCount)
