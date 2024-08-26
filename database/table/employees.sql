--liquibase formatted sql
--changeset ivan:create_EMPLOYEES_table runOnChange:false failOnError:true context:v1
--comment Create the EMPLOYEES table to hold the employee personnel  information for the company. EMPLOYEES has a self referencing foreign key to this table.
--rollback  DROP TABLE EMPLOYEES CASCADE CONSTRAINTS;
CREATE TABLE employees ( 
    employee_id    NUMBER(6)
    , first_name     VARCHAR2(20)
    , last_name      VARCHAR2(25)
	, email          VARCHAR2(25)
	, phone_number   VARCHAR2(20)
    , hire_date      DATE
	, job_id         VARCHAR2(10)
	, salary         NUMBER(8,2)
    , commission_pct NUMBER(2,2)
    , manager_id     NUMBER(6)
    , department_id  NUMBER(4)
    , PRIMARY KEY (employee_id) 
    ) ;