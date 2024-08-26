--liquibase formatted sql
--changeset ivan.rojas:create_COUNTRIES_table context:v1 labels:v1.0.0
--comment Create the COUNTRIES table to hold country information for customers and company locations. LOCATIONS have a foreign key to this table.
--rollback  DROP TABLE countries CASCADE CONSTRAINTS;
CREATE TABLE countries 
    ( country_id      INT NOT NULL
    , country_name    VARCHAR(40) 
    , region_id       INT 
    , PRIMARY KEY (country_id) 
    );