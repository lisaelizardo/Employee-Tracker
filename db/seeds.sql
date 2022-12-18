INSERT INTO department (name)
VALUES  ("Accounting"), ("HR"), ("IT");


INSERT INTO role (title, department_id, salary)
VALUES  ("Executive", 1, 5000),
        ("Manager", 1, 1500), 
        ("Junior Worker", 1, 1000),
        ("Customer Service", 1, 500),
        ("Executive", 2, 4000),
        ("Manager", 2, 1500), 
        ("Junior Worker", 2, 1000),
        ("Customer Service", 2, 500),
        ("Executive", 3, 6000),
        ("Manager", 3, 2000), 
        ("Junior Worker", 3, 1500),
        ("Customer Service", 3, 1000);

INSERT INTO employee (first_name, last_name, role_id)
VALUES  ("Kyle", "Sendit", 1),
        ("Apple", "Leto", 2),
        ("Buccee", "Beaver", 3),
        ("Sancho", "Martinez", 4),
        ("Rick", "James", 7),
        ("Merica", "Smith", 8),
        ("George", "Straight", 9),
        ("Jorge", "MuyBenito", 11),
        ("Catalina", "Sour", 12);


update employee set manager_id = 1 where id = 2;
update employee set manager_id = 2 where id in (3, 4, 5, 6);
update employee set manager_id = 7 where id in (8, 9);




