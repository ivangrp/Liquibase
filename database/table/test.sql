--liquibase formatted sql
--changeset ivan:1 runOnChange:true
CREATE OR REPLACE TABLE test_table (test_id INT NOT NULL, test_column INT, test_name varchar(50) PRIMARY KEY (test_id))