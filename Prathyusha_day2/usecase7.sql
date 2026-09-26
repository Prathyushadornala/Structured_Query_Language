USE jfs_58;
CREATE TABLE vehicles(
    vehicle_id INT AUTO_INCREMENT NOT NULL,
    registration_number VARCHAR(20) NOT NULL,
    owner_name VARCHAR(120) NOT NULL,
    manufacturer VARCHAR(80) NOT NULL,
    model VARCHAR(80) NOT NULL,
    vehicle_type VARCHAR(20) NOT NULL,
    fuel_type VARCHAR(20) NOT NULL,
    manufacture_year YEAR NOT NULL,
    purchase_date DATE,
    color VARCHAR(40) NOT NULL,
    odometer_km INT NOT NULL DEFAULT 0,
    insurance_expiry DATE,
    vehicle_status varchar(20) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_vehicles_vehicle_id` PRIMARY KEY (vehicle_id),
    CONSTRAINT `uq_registration_number` UNIQUE (registration_number),
    CONSTRAINT `chk_odometer_km_non_negative` CHECK (odometer_km >= 0)
);

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('TS09AB1234', 'Arjun', 'Honda', 'Activa 6G', 'MOTORCYCLE', 'PETROL', 2022, '2022-06-15', 'Red', 8500, '2027-06-15', 'IN_SERVICE');

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, color)
VALUES ('TS10CD5678', 'Sneha', 'Hyundai', 'Creta', 'TRUCK', 'DIESEL', 2023, 'White');

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('TS11EF9012', 'Rohit', 'Tata', 'Nexon EV', 'VAN', 'ELECTRIC', 2024, '2024-02-20', 'Blue', 6500, '2027-02-20', 'ACTIVE');

SELECT * FROM vehicles;
