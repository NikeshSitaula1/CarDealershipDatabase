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
    sales_id INT AUTO_INCREMENT PRIMARY KEY,
    vin INT NOT NULL,
    date VARCHAR(40) NOT NULL,
    customer_name VARCHAR(50) NOT NULL,
    customer_email VARCHAR(50) NOT NULL,
    sales_tax_amount DOUBLE NOT NULL,
    recording_fee DOUBLE NOT NULL,
    processing_fee DOUBLE NOT NULL,
    total_price DOUBLE NOT NULL,
    wants_to_finance BOOLEAN NOT NULL,
    monthly_payment DOUBLE NOT NULL,
    FOREIGN KEY (vin)
        REFERENCES vehicles (vin)
);


CREATE TABLE lease_contracts (
    lease_id INT AUTO_INCREMENT PRIMARY KEY,
    vin INT NOT NULL,
    date VARCHAR(40) NOT NULL,
    customer_name VARCHAR(50) NOT NULL,
    customer_email VARCHAR(50) NOT NULL,
    unexpected_ending_value DOUBLE NOT NULL,
    lease_fee DOUBLE NOT NULL,
    total_price DOUBLE NOT NULL,
    monthly_payment DOUBLE NOT NULL,
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

INSERT INTO sales_contracts (vin, date, customer_name, customer_email, sales_tax_amount, recording_fee, processing_fee, total_price, wants_to_finance, monthly_payment)
VALUES
(35812, '2024-11-15', 'John Doe', 'johndoe@example.com', 1400.00, 100.00, 495.00, 29995.00, TRUE, 645.00),
(20498, '2024-11-16', 'Jane Smith', 'janesmith@example.com', 1250.00, 100.00, 495.00, 26845.00, FALSE, 0.00),
(50013, '2024-11-17', 'Robert Brown', 'robertbrown@example.com', 1600.00, 100.00, 495.00, 34195.00, TRUE, 720.00),
(10112, '2024-11-18', 'Emily Davis', 'emilydavis@example.com', 49.75, 100.00, 295.00, 1439.75, TRUE, 65.00),
(21123, '2024-11-19', 'Michael Johnson', 'michaeljohnson@example.com', 1900.00, 100.00, 495.00, 40495.00, TRUE, 840.00),
(40130, '2024-11-20', 'Sarah Lee', 'sarahlee@example.com', 850.00, 100.00, 295.00, 18145.00, TRUE, 425.00),
(30211, '2024-11-21', 'Daniel White', 'danielwhite@example.com', 1100.00, 100.00, 495.00, 23595.00, FALSE, 0.00),
(10025, '2024-11-22', 'Jessica Green', 'jessicagreen@example.com', 1750.00, 100.00, 495.00, 37345.00, FALSE, 0.00),
(11205, '2024-11-23', 'David Harris', 'davidharris@example.com', 1100.00, 100.00, 495.00, 23695.00, TRUE, 540.00),
(37846, '2024-11-24', 'Laura Walker', 'laurawalker@example.com', 99.75, 100.00, 295.00, 2489.75, TRUE, 125.00);

INSERT INTO lease_contracts (vin, date, customer_name, customer_email, unexpected_ending_value, lease_fee, total_price, monthly_payment)
VALUES
(50432, '2024-11-15', 'Alice Cooper', 'alicecooper@example.com', 25000.00, 2000.00, 47000.00, 950.00),
(21234, '2024-11-16', 'Bob Marley', 'bobmarley@example.com', 30000.00, 2500.00, 59000.00, 1180.00),
(31123, '2024-11-17', 'Charlie Chaplin', 'charliechaplin@example.com', 18000.00, 1500.00, 38000.00, 770.00),
(45023, '2024-11-18', 'Diana Prince', 'dianaprince@example.com', 12000.00, 1300.00, 31000.00, 640.00),
(71234, '2024-11-19', 'Ethan Hunt', 'ethanhunt@example.com', 20000.00, 1800.00, 44000.00, 900.00);







    
    
    
    
    
    
	