-- Databricks notebook source
USE CATALOG hive_metastore;

-- COMMAND ----------

INSERT INTO managed_default
VALUES (3 INT, 2 INT, 1 INT)

-- COMMAND ----------

CREATE TABLE managed_default
  (width INT, length INT, height INT);

-- COMMAND ----------

DESCRIBE EXTENDED managed_default

-- COMMAND ----------

CREATE TABLE external_default
  (width INT, length INT, height INT)
LOCATION 'dbfs:/mnt/demo/external_default';

-- COMMAND ----------

INSERT INTO external_default
VALUES (3 INT, 2 INT, 1 INT)

-- COMMAND ----------

DESCRIBE EXTENDED external_default

-- COMMAND ----------

DROP TABLE managed_default

-- COMMAND ----------

-- MAGIC  %fs ls 'dbfs:/user/hive/warehouse/managed_default'

-- COMMAND ----------

DROP TABLE external_default

-- COMMAND ----------

-- MAGIC  %md
-- MAGIC  ## External Tables

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/mnt/demo/external_default'

-- COMMAND ----------

CREATE SCHEMA new_default


-- COMMAND ----------

DESCRIBE DATABASE EXTENDED new_default

-- COMMAND ----------

DESCRIBE DATABASE EXTENDED custom

-- COMMAND ----------

CREATE SCHEMA custom
LOCATION 'dbfs:/Shared/schemas/custom.db'
