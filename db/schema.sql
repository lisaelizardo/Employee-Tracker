DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

-- Here the schemas(tables) are department, role, employee which are created in the database using the CREATE TABLE statment
-- id is a PRIMARY KEY which will have a feature of AUTO_INCREMENT i.e it will always generate a unique value for column 'id'
-- VARCHAR(30) - Accept only till limit of 30  .. Eg VARCHAR(5) will give error in 'Patrick'

CREATE TABLE departments (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);

-- PRIMARY AND FOREIGN KEYS -->
--  EG - Frontend Developer(role) -> Dept is Software Engineering, Human Resource Manager(role) --> Dept HR, Financial Anaylst(role) --> Finance

CREATE TABLE role (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    departments_id INT UNSIGNED NOT NULL,
    INDEX dept_ind (departments_id), 
    CONSTRAINT fk_departments FOREIGN KEY (departments_id) REFERENCES departments(id) ON DELETE CASCADE
    );

-- Emp Patrick --> Role Frontend Developer, James Employee --> Role Financial Anaylst
CREATE TABLE employees (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT UNSIGNED NOT NULL,
    manager_id INT UNSIGNED,
    INDEX role_ind (role_id), 
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    INDEX mgr_ind (manager_id), 
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employees(id) ON DELETE SET NULL
    );

