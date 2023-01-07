//const db = require("./db")
const express = require('express');
const mysql = require('mysql2');

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const db = mysql.createConnection(
    {
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'books_db'
    },
    console.log(`Connected to the books_db database.`)
  );

function loadPrompts(){
    prompt([{
        type: "list",
        name: "choice",
        message: "Make a selection below",
        choices: [
            {
                name: "View all departments",
                value: "VIEW_DEPARTMENTS"
            },
            {
                name: "View all roles",
                value: "VIEW_ROLES"
            },
            {
                name: "View all employees",
                value: "VIEW_EMPLOYEES"
            },
            {
                name: "Quit",
                value: "QUIT"
            }
        ]
    }]).then(res =>{
        let choice =res.choice;

        switch (choice) {
            case "VIEW_DEPARTMENTS":
                viewDepartments();
                break;
            case "VIEW_ROLES":
                viewRoles();
                break;
            case "VIEW_EMPLOYEES":
                viewEmployees();
                break;
            defualt:
            quit();
        }
    })
}

function  viewDepartments() {
    db.addDepartments()
    .then(([rows]) => {
        let departments = rows;
        console.table(departments)
    })
    .then(() => loadPrompts());
}