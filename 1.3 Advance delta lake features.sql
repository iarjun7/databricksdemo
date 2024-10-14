-- Databricks notebook source

DESCRIBE HISTORY employee;

-- COMMAND ----------

DELETE from employee

-- COMMAND ----------

select * from employee

-- COMMAND ----------



-- COMMAND ----------

RESTORE TABLE employee TO version AS OF 1

-- COMMAND ----------

DESCRIBE HISTORY EMPLOYEE
