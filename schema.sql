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

CREATE TABLE employee(
    employee_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(40),
    title VARCHAR(60),
    emp_num MEDIUMINT,
    dept_id TINYINT,
    emp_tier TINYINT,
    salary MEDIUMINT,
    date_hired DATE,
    emp_status TINYINT,

    CONSTRAINT pk_employee PRIMARY KEY (employee_id)
);

CREATE TABLE transaction(
    transaction_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    employee_id TINYINT,
    products_sold TINYINT, 
    amount FLOAT(3,2),
    transaction_date DATETIME,
    CONSTRAINT pk_transaction PRIMARY KEY (transaction_id)
);