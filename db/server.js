const connection = require("./connection");


//view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role

class DB {
    constructor(connection) {
        this.connection = connection
    }

    findAllEmployees() {
        return this.connection.promise().query(
            "SELECT employees.id, employees.first_name, employees.last_name, role.title, role.salary, CONCAT(manager.first_name, ' ', manager.last_name) AS manager FROM employees LEFT JOIN role on employees.role_id = role.id LEFT JOIN departments on role.departments_id = departments.id LEFT JOIN employees manager on manager.id = employees.manager_id;"
        );
    }
    // department.name AS department,

    findAllDepartments() {
        return this.connection.promise().query(
            "SELECT departments.id, departments.name FROM departments;"
        );
    }

    findAllRoles() {
        return this.connection.promise().query(
            "SELECT role.id, role.title, departments.name AS departments, role.salary FROM role LEFT JOIN departments on role.departments_id = departments.id;"
        );
    }

    addDepartments(departments) {
        return this.connection.promise().query(
            "INSERT INTO departments SET ?", departments
        );
    }

    addRole(role) {
        return this.connection.promise().query(
            "INSERT INTO role SET ?", role
        );
    }

    addEmployees(employees) {
        return this.connection.promise().query(
         "INSERT INTO employees SET ?", employees
        );
    }

    updateRole() {
        return this.connection.promise().query(
            "INSERT INTO employees SET ?", employeesId
        );
    }

}

// app.post('/api/new-departments', ({ body }, res) => {
//     const sql = `INSERT INTO department (departments_name)
//       VALUES (?)`;
//     const params = [body.departments_name];
    
//     db.query(sql, params, (err, result) => {
//       if (err) {
//         res.status(400).json({ error: err.message });
//         return;
//       }
//       res.json({
//         message: 'done',
//         data: body
//       });
//     });
//   });

module.exports = new DB(connection)


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
*/

