const inquirer = require('inquirer');
const fs = require('fs');


//view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role


function addDepartment() {
    return this.connection.promise().query(
        "SELECT "
    )
};

function addRole() {
    return this.connection.promise().query(

    )
};

function addEmployee() {
    return this.connection.promise().query(

    )
};









// function addRole(
//     inquirer
//         .prompt([
//             {
//                 type: 'input',
//                 name: 'role',
//                 message: 'Add a Role?'
//             }
//         ])
// );

// function addEmployee(
//     inquirer
//         .prompt([
//             {
//                 type: 'input',
//                 name: 'newEmployee',
//                 message: 'Add a New Employee?'
//             }
//         ])
// );   


/*
inquirer
    .prompt([
        {
            type: 'input',
            name: 'view_d',
            message: 'View all departments',
        },
        {
            type: 'input',
            name: 'view_r',
            message: 'View all roles',
        {
            type: 'input',
            name: 'view_e',
            message: 'View all employees',
        },
        {
            type: 'input',
            name: 'department',
            message: 'Add a Department',
        },
        {
            type: 'input',
            name: 'role',
            message: 'Add a Role',
        },
        {
            type: 'input',
            name: 'employee',
            message: 'Add an Employee',
        },
        {
            type: 'input',
            name: 'update',
            message: 'Update an Employee Role',
        },
    ])
    .then((answers) => {
        console.log(answers)
        const markdownContent = generateMarkdown(answers);
        console.log(markdownContent)
        fs.writeFile('README.md', markdownContent, (err) => err && console.error(err))
    })