INSERT INTO departments (name)
VALUES  ("Accounting"), ("HR"), ("IT");


INSERT INTO role (title, departments_id, salary)
VALUES  ("Executive", 1, 5000),
        ("Manager", 1, 1500), 
        ("Junior Worker", 1, 1000),
        ("Customer Service", 1, 500),
        ("Sales Lead", 2, 4000),
        ("Accountant", 2, 1500), 
        ("Attorney", 2, 1000),
        ("Data Entry Specialist", 2, 500),
        ("Salesperson", 3, 6000),
        ("Engineer", 3, 2000), 
        ("Developer", 3, 1500),
        ("Designer", 3, 1000);

INSERT INTO employees (first_name, last_name, role_id)
VALUES  ("Kyle", "Sendit", 1),
        ("Apple", "Leto", 2),
        ("Buccee", "Beaver", 3),
        ("Sancho", "Martinez", 4),
        ("Rick", "James", 7),
        ("Merica", "Smith", 8),
        ("George", "Straight", 9),
        ("Jorge", "MuyBenito", 11),
        ("Catalina", "Sour", 12);


update employees set manager_id = 1 where id = 2;
update employees set manager_id = 2 where id in (3, 4, 5, 6);
update employees set manager_id = 7 where id in (8, 9);




