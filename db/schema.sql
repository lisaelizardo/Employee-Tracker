DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

-- Here the schemas(tables) are department, role, employee which are created in the database using the CREATE TABLE statment
-- id is a PRIMARY KEY which will have a feature of AUTO_INCREMENT i.e it will always generate a unique value for column 'id'
-- VARCHAR(30) - Accept only till limit of 30  .. Eg VARCHAR(5) will give error in 'Patrick'

CREATE TABLE department (
    id INT AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

-- PRIMARY AND FOREIGN KEYS -->
--  EG - Frontend Developer(role) -> Dept is Software Engineering, Human Resource Manager(role) --> Dept HR, Financial Anaylst(role) --> Finance

CREATE TABLE role (
    id INT AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE SET NULL
    );

-- Emp Patrick --> Role Frontend Developer, James Employee --> Role Financial Anaylst
CREATE TABLE employee (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (manager_id) 
    REFERENCES employee(id)  -- SELF REFERENCING KEYS
    ON DELETE SET NULL,
    FOREIGN KEY (role_id)
    REFERENCES role(id)
    ON DELETE SET NULL
);

