USE jfs_58;
CREATE TABLE hotel_rooms(
    room_id INT AUTO_INCREMENT,
    room_number VARCHAR(10) NOT NULL,
    room_type VARCHAR(20) NOT NULL,
    floor_number SMALLINT NOT NULL,
    bed_count TINYINT NOT NULL,
    max_occupancy TINYINT NOT NULL,
    price_per_night DECIMAL(10,2) NOT NULL,
    availability_status varchar(20) NOT NULL DEFAULT 'AVAILABLE',
    has_air_conditiooning BOOLEAN NOT NULL DEFAULT TRUE,
    smoking_allowed BOOLEAN NOT NULL DEFAULT FALSE,
    notes VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_hotel_rooms_room_id` PRIMARY KEY (room_id),
    CONSTRAINT `uq_room_number` UNIQUE (room_number),
    CONSTRAINT `chk_bed_count` CHECK (bed_count > 0),
    CONSTRAINT `chk_max_ocupancy` CHECK (max_occupancy > 0),
    CONSTRAINT `chk_night_price` CHECK (price_per_night > 0)
);

INSERT INTO hotel_rooms (room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night)
VALUES ('103', 'DELUXE', 1, 1, 2, 95.00);

INSERT INTO hotel_rooms (room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night)
VALUES ('215', 'DOUBLE', 2, 2, 2, 135.00);

INSERT INTO hotel_rooms (room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night)
VALUES ('407', 'SUITE', 4, 2, 4, 250.00);

INSERT INTO hotel_rooms (room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night)
VALUES ('508', 'SINGLE', 5, 1, 1, 85.00);

SELECT * FROM HOTEL_ROOMS;