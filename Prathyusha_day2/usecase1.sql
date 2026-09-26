USE jfs_58;
CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT,
    admission_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE NOT NULL,
    program_name VARCHAR(100) NOT NULL,
    admission_date DATE NOT NULL,
    cgpa DECIMAL(4, 2) NOT NULL,
    student_status VARCHAR(15) NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_students_student_id` PRIMARY KEY (student_id),
    CONSTRAINT `uq_admission_number` UNIQUE (admission_number),
    CONSTRAINT `uq_email` UNIQUE (email),
    CONSTRAINT `chk_cgpa_range` CHECK (cgpa BETWEEN 0.00 AND 10.00)
);

SELECT * FROM students;

INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa) VALUES ('CG7778', 'Prathyusha', 'Dornala', 'prathyusha@gmail.com', 9152587452, '2004-08-20', 'IOT', '2022-09-15', 8.64);

INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa) VALUES ('CG7764', 'Kavya', 'Vatti', 'kavya@gmail.com', 8888888884, '2005-05-07', 'IT', '2022-09-11', 9.95);
