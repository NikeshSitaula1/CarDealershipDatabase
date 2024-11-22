create database CarDealership;
use CarDealership;

CREATE TABLE dealership (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
);
    
CREATE TABLE vehicles (
    vin INT PRIMARY KEY,
    year INT,
    make VARCHAR(40),
    model VARCHAR(50),
    vehicleType VARCHAR(50),
    color VARCHAR(15),
    odometer INT,
    price DOUBLE,
    sold BOOLEAN
);

CREATE TABLE inventory (
    dealership_id INT,
    vin INT,
    PRIMARY KEY (dealership_id , vin),
    FOREIGN KEY (dealership_id)
        REFERENCES dealership (dealership_id),
    FOREIGN KEY (vin)
        REFERENCES vehicles (vin)
);
    

CREATE TABLE sales_contracts (
    contract_id INT AUTO_INCREMENT PRIMARY KEY,
    vin INT,
    date VARCHAR(40),
    customer_name VARCHAR(50),
    customer_email VARCHAR(50),
    sales_tax_amount DOUBLE,
    recording_fee DOUBLE,
    processing_fee DOUBLE,
    total_price DOUBLE,
    wants_to_finance BOOLEAN,
    monthly_payment DOUBLE,
    FOREIGN KEY (vin)
        REFERENCES vehicles (vin)
);


CREATE TABLE lease_contracts (
    contract_id INT AUTO_INCREMENT PRIMARY KEY,
    vin INT,
    date VARCHAR(40),
    customer_name VARCHAR(50),
    customer_email VARCHAR(50),
    unexpected_ending_value DOUBLE,
    lease_fee DOUBLE,
    total_price DOUBLE,
    monthly_payment DOUBLE,
    FOREIGN KEY (vin)
        REFERENCES vehicles (vin)
);
    
    
    
    
    
    
    
    
	