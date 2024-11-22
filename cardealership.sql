create database CarDealership;
use CarDealership;

CREATE TABLE dealership (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
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

CREATE TABLE vehicles (
    vin INT PRIMARY KEY,
    year INT,
    make VARCHAR(40),
    model VARCHAR(50),
    vehicleType VARCHAR(50),
    color VARCHAR(15),
    odometer INT,
    price DOUBLE
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

INSERT INTO vehicles (VIN, Year, Make, Model, vehicletype, Color, Odometer, Price) VALUES
(10112, '1993', 'Ford', 'Explorer', 'SUV', 'Red', 525123, 995.0),
(37846, '2001', 'Ford', 'Ranger', 'Truck', 'Yellow', 172544, 1995.0),
(20498, '2012', 'BMW', 'X5', 'SUV', 'Black', 87234, 25000.0),
(35812, '2015', 'Audi', 'Q7', 'SUV', 'Silver', 62345, 28000.0),
(50013, '2018', 'Ford', 'F-150', 'Truck', 'Blue', 23456, 32000.0),
(10025, '2020', 'BMW', '3 Series', 'Sedan', 'White', 10234, 35000.0),
(40130, '2005', 'Dodge', 'Ram 1500', 'Truck', 'Green', 130000, 17000.0),
(11205, '2016', 'Audi', 'A6', 'Sedan', 'Gray', 48421, 22000.0),
(21123, '2019', 'BMW', 'X3', 'SUV', 'Blue', 11500, 38000.0),
(30211, '2014', 'Dodge', 'Charger', 'Sedan', 'Black', 87600, 22000.0),
(40235, '2011', 'Audi', 'A4', 'Sedan', 'White', 102000, 15000.0),
(10234, '2013', 'Ford', 'Escape', 'SUV', 'Red', 42000, 19500.0),
(20812, '2007', 'BMW', '5 Series', 'Sedan', 'Silver', 158000, 12500.0),
(30987, '2017', 'Dodge', 'Durango', 'SUV', 'Purple', 30500, 33000.0),
(50432, '2020', 'Ford', 'Mustang', 'Coupe', 'Yellow', 10000, 45000.0),
(21234, '2014', 'BMW', 'M4', 'Coupe', 'Orange', 49000, 55000.0),
(31123, '2008', 'Dodge', 'Viper', 'Coupe', 'Red', 67000, 52000.0),
(45023, '2009', 'Audi', 'TT', 'Coupe', 'Silver', 87000, 19000.0),
(60123, '2010', 'Ford', 'Fusion', 'Sedan', 'Black', 80000, 12000.0),
(71234, '2012', 'Audi', 'S4', 'Sedan', 'Blue', 40000, 22000.0);



    
    
    
    
    
    
	