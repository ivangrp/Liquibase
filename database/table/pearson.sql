--liquibase formatted sql
--changeset gael:1 runOnChange:true
CREATE OR REPLACE TABLE pearson (pearson_id INT NOT NULL, pearson_name varchar(50) PRIMARY KEY (pearson_id))