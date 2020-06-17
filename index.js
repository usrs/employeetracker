const { prompt } = require('inquirer')
const db = require('mysql2')
const cTable = require('console.table')

// define connection to the MYSQL Database
const connection = mysql.createConnection({
  host: 'localhost',
  port: '3306',
  user: 'root',
  password: 'rootroot',
  database: 'employeeCMS'
})

// connection to the database, & starts terminal program
connection.connect(function (err) {
  if (err) {console.error(err)}
  mainMenu()
})

let mainMenu = () => {
  prompt([{
    type: 'list',
    name: 'mainMenu',
    message: 'Please select an option.',
    choices: [
      'See all Employees',
      'See all Departments', 
      'See all Employee Roles', 
      'View all Employees by Manager',
      'Add an Employee',
      'Add a Department', 
      'Add Role', 
      'Update an Employee Role', 
      'Exit'
      ]
  }])
  .then(({
    mainMenu
  }) => {
    switch (mainMenu) {
      case "See all Employees":
        viewEmployees()
        break;
      case "See all Departments":
        viewDepartments()
        break;
      case "See all Employee Roles":
        viewRoles()
        break;
      case "View all Employees by Manager":
        byManager()
        break;
      case "Add an Employee":
        addEmployee()
        break;
      case "Add a Department":
        addDepartment()
        break;
      case "Add Role":
        addRole()
        break;
      case "Update an Employee Role":
        updateRole()
        break;
      case "Exit":
        console.log('All Done!')
        connection.end()
        process.exit
        break;
    }
  })
}