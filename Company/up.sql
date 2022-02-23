CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
-- to represent whether it is identity is based on system users vs various other actors in the system
-- C# EF core does not support ENUMS :(
-- CREATE TYPE person_type AS ENUM ('realUser', 'systemGenerated');
CREATE TABLE IF NOT EXISTS EMPLOYEE (
    id uuid DEFAULT uuid_generate_v4 () PRIMARY KEY,
    email VARCHAR(128) NOT NULL UNIQUE,
    name VARCHAR(128) NOT NULL,
    phone VARCHAR(128),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE EMPLOYEE ADD COLUMN manager_id uuid;
ALTER TABLE EMPLOYEE ADD CONSTRAINT Manager_FK FOREIGN KEY (manager_id) REFERENCES EMPLOYEE(id);

CREATE TABLE IF NOT EXISTS DEPARTMENT(
    -- Columns
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    name text NOT NULL,
    dept_number integer UNIQUE,
    manager_id uuid ,
    -- Constraints
    CONSTRAINT manager_id_fk FOREIGN KEY (manager_id) REFERENCES EMPLOYEE(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS PROJECT(
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    name text NOT NULL UNIQUE,
    department_id uuid,
    --CONSTRAINTS
    CONSTRAINT department_id_fk FOREIGN KEY (department_id) REFERENCES DEPARTMENT(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS DEPENDENT(
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    name text NOT NULL,
    birth_date date NOT NULL,
    sex text,
    relationship text NOT NULL,
    employee_id uuid NOT NULL,
    -- Constraints
    CONSTRAINT employee_id_fk FOREIGN KEY (employee_id) REFERENCES EMPLOYEE(id) ON DELETE CASCADE
);
