# Databricks notebook source
# MAGIC %sql
# MAGIC create table employee
# MAGIC (id INT, name string, salary DOUBLE);

# COMMAND ----------

# MAGIC %sql
# MAGIC insert into employee values (1, 'arjun',100)

# COMMAND ----------

spark.sql('SHOW TABLES LIKE "employee"')
