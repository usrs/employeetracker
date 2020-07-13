USE employee_db;

INSERT INTO department (name) VALUES ('operations');
INSERT INTO department (name) VALUES ('accounting');
INSERT INTO department (name) VALUES ('sales');
INSERT INTO department (name) VALUES ('engineering');
INSERT INTO department (name) VALUES ('human resources');

INSERT INTO role (title, salary, department_id) VALUES ('operation manager', 100000.00, 1);
INSERT INTO role (title, salary, department_id) VALUES ('accounting manager', 120000.00, 2);
INSERT INTO role (title, salary, department_id) VALUES ('sales manager', 120000.00, 3);
INSERT INTO role (title, salary, department_id) VALUES ('engineering manager', 120000.00, 4);
INSERT INTO role (title, salary, department_id) VALUES ('sales rep', 50000.00, 3);
INSERT INTO role (title, salary, department_id) VALUES ('engineer', 80000.00, 4);
INSERT INTO role (title, salary, department_id) VALUES ('human resource representative', 70000.00, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('John', 'Medal', 1, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Andrew', 'Takeya', 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Nicole', 'Carmine', 3, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Tiffany', 'Burns',4, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Breann', 'Marsh', 5, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Lindsay', 'Moebius', 6, 4);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Ian', 'Stewart', 7, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Perri', 'Stevenson', 7, 1);