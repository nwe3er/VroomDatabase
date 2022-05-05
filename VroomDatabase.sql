-- ********************************************
-- CREATE THE VROOM DATABASE
-- By: Ryan Brockinton, Kathryn Kingsley, Nebil Weber, Jonathan Yu
-- *******************************************

-- create the database
DROP DATABASE IF EXISTS vroom;
CREATE DATABASE vroom;

-- select the database
USE vroom;

-- create the tables

CREATE TABLE person (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    login_password VARCHAR(50) NOT NULL,
    zip_code INT NOT NULL,
    dob DATE NOT NULL,
    phone_number VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE vehicle (
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    max_passenger INT NOT NULL,
    exterior_color VARCHAR(20) NOT NULL,
    vin VARCHAR(17) NOT NULL,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    user_id INT NOT NULL,
    mileage INT NOT NULL,
    vehicle_year DATE NOT NULL,
    transmission VARCHAR(20) NOT NULL,
    interior_material VARCHAR(50) NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES person (user_id)
);

CREATE TABLE insurance (
    insurance_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(50) NOT NULL,
    carrier VARCHAR(50) NOT NULL,
    coverage_type VARCHAR(50) NOT NULL,
    vehicle_id INT NOT NULL UNIQUE,
    FOREIGN KEY (vehicle_id)
        REFERENCES vehicle (vehicle_id)
);

CREATE TABLE license (
    license_id INT PRIMARY KEY AUTO_INCREMENT,
    expiration_date DATE NOT NULL,
    license_number INT NOT NULL UNIQUE,
    photo BLOB NOT NULL,
    user_id INT NOT NULL UNIQUE,
    FOREIGN KEY (user_id)
        REFERENCES person (user_id)
);

CREATE TABLE report (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    report_reason VARCHAR(100) NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES person (user_id)
);


CREATE TABLE listing (
    list_id INT PRIMARY KEY AUTO_INCREMENT,
    price VARCHAR(20),
    list_pic BLOB,
    vehicle_id INT NOT NULL UNIQUE,
    FOREIGN KEY (vehicle_id)
        REFERENCES vehicle (vehicle_id)
);

CREATE TABLE review (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    review VARCHAR(1000),
    rating INT NOT NULL,
    list_id INT NOT NULL,
    FOREIGN KEY (list_id)
        REFERENCES listing (list_id)
);

CREATE TABLE availability (
    access_id INT PRIMARY KEY AUTO_INCREMENT,
    from_date DATE NOT NULL,
    is_available BOOLEAN NOT NULL,
    to_date DATE NOT NULL,
    list_id INT NOT NULL UNIQUE,
    FOREIGN KEY (list_id)
        REFERENCES listing (list_id)
);

CREATE TABLE contract (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount VARCHAR(20) NOT NULL,
    check_in_time TIME NOT NULL,
    check_out_time TIME NOT NULL,
    pickup_location VARCHAR(50) NOT NULL,
    return_location VARCHAR(50) NOT NULL,
    condition_desc VARCHAR(50) NOT NULL,
    renter_id INT NOT NULL,
    list_id INT NOT NULL,
    FOREIGN KEY (renter_id)
        REFERENCES person (user_id),
    FOREIGN KEY (list_id)
        REFERENCES listing (list_id)
);





