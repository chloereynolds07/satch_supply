-- i missed three days so cut me some lack idk what's going on (┬┬﹏┬┬)


DROP DATABASE IF EXISTS satchsupply;
CREATE DATABASE satchsupply; 
USE satchsupply;

CREATE TABLE dept(
    dept_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    dept VARCHAR(30),
    CONSTRAINT pk_dept PRIMARY KEY (dept_id)
);

CREATE TABLE contract(
    contract_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    employee_id TINYINT,
    cilent VARCHAR(50),
    amount SMALLINT,
    contract_date DATE,
    completion_date DATE,

    CONSTRAINT pk_contract PRIMARY KEY (contract_id)
);