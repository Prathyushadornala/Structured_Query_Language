USE jfs_58;
CREATE TABLE patients (
    patient_id INT NOT NULL AUTO_INCREMENT,
    patient_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    biological_sex ENUM('FEMALE' , 'MALE', 'INTERSEX', 'NOT_DISCLOSED') NOT NULL,
    blood_group ENUM ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'),
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(120),
    emergency_contact_name VARCHAR(100) NOT NULL,
    emergency_contact_phone VARCHAR(15) NOT NULL,
    allergies TEXT,
    patient_status VARCHAR(20) NOT NULL DEFAULT 'Active',
    registered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_patient_id PRIMARY KEY (patient_id),
    CONSTRAINT `uk_patient_number` UNIQUE (patient_number)
);

INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, emergency_contact_name, emergency_contact_phone) 
VALUES ('JFS101', 'Prathyusha', 'Dornala', '2004-05-11', 'FEMALE', 'O+', '9598234310', 'Prathyusha', '9452148975');

INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, emergency_contact_name, emergency_contact_phone) 
VALUES ('JFS102', 'Vyshu', 'Vatti', '2003-11-19', 'FEMALE', 'A+', '8795248901', 'Kavya', '1234567890');

SELECT * FROM patients;






