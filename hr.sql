-- create db --

-- employee
--     id
--     first name
--     last name
--     months
--     status
    
-- managers
--     manager id
--     first
--      last

-- departments
--     departments id
--     departments


CREATE TABLE employee(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name  TEXT NOT NULL,
    months INT DEFAULT 0 NOT NULL, -- start_date DATE NOT NULL
    employee_status TEXT NOT NULL, --full time BOOLEAN 
    manager_id REFERENCES managers, --manager_id references employee.id
    department_id REFERENCES departments
);


CREATE TABLE departments(
    id SERIAL PRIMARY KEY,
    dept TEXT
);

