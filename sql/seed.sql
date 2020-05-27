USE employee_db;

INSERT INTO department (name)
VALUES ('sales'), ('engineering'), ('marketing'), ('warehouse');

INSERT INTO role (title, salary, department_id)
VALUES ('executive', 150000, 5), ('manager', 120000, 5), ('engineer', 110000, 2), ('sales-person', 80000, 1), ('stock-person', 70000, 4);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ('Eilish', 'Mann', 5), ('Khalil', 'Goodman', 2), ('Safia', 'Wilder', 1), ('Christiana', 'Mcnamara', 4);