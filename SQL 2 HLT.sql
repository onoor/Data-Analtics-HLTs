-- This is the database for FortJesus Aquatics Club boat rentals

CREATE DATABASE Boat_Rentals;

USE Boat_Rentals;

-- Here's the first table for this database

CREATE TABLE rentors(
CustomerID INT NOT NULL PRIMARY KEY, 
CustomerName VARCHAR(100),
DateofBirth VARCHAR(10),
Address VARCHAR(100),
PostCode VARCHAR(7),
ContactNumber INT(11),	
EmailAddress VARCHAR(30)

);

EXPLAIN rentors;

INSERT INTO rentors (CustomerID, CustomerName, DateofBirth, Address, PostCode, ContactNumber, EmailAddress)
VALUES
(29647549, "Talib Osman", "11/08/1994", "32 Crosshill street", "m146jl", "07749898035", "talib3478@gmail.com"),
(28983456, "Dotto Kurwa", "21/03/1986", "48 Croydon road", "e126pl", "07949893241", "d.kurwa128@hotmail.com"),
(32234561, "Dexter Morgan", "15/05/1979", "9 abbeyhill avenue", "c16rd", "07649899803", "Dexter.Morgan8@nypd.com"),
(29768452, "Kylie Duncan", "16/01/1985", "12 claremont street", "fy26ps", "07749648028", "swtkylie038@gmail.com"),
(32567894, "Amy Schumer", "27/12/1991", "98 london street", "n256nl", "07749898035", "a.schumer@live.com")
;

SELECT * FROM rentors;


-- And this is the second table	

CREATE TABLE rentals(
RentalID INT NOT NULL PRIMARY KEY,
CustomerID INT, 
BoatID VARCHAR(10),
BoatName VARCHAR(20),
TransactionDate VARCHAR(10),
DurationDays VARCHAR(12),
PaidAmount FLOAT(6)
);

EXPLAIN rentals;

-- Filling with data

INSERT INTO rentals (RentalID, CustomerID, BoatID, BoatName, TransactionDate, DurationDays, PaidAmount)
VALUES
(8, 29647549, "KP234R",  "Sorpresso", 21/08/2021, 4, 180.00),
(2, 32567894, "KP189L", "Polepole", 27/09/2021, 3, 105.50),
(1, 29768452, "USR2345Q", "Paradiso", 17/10/2021, 5, 345.00),
(6, 28983456, "L8795W", "Tumaini", 03/11/2021, 5, 220.00),
(7, 32234561, "KP435L", "Sorpresso", 11/12/2021, 3, 245.00),
(10, 32234561, "YS401H", "Lamarina", 13/12/2021, 3, 1400.00),
(13, 32234561, "NY435L", "Ngalawa", 14/12/2021, 10, 1500.00),
(11, 32234561, "YS402H", "Lamarina", 20/12/2021, 14, 850.00),
(9, 32234561, "YS105H", "Lamarina", 25/12/2021, 4, 150.50),
(3, 32234561, "US435HQ", "Paradiso", 29/12/2021, 3, 200.99),
(4, 32234561, "YS1267J", "Lamarina", 31/12/2021, 2, 1200)
;

SELECT * FROM rentals;


-- Joining tables example

SELECT rentors.CustomerName , rentals.RentalID
FROM rentors
INNER JOIN rentals
ON rentors.CustomerID = rentals.CustomerID;

-- selecting data example

SELECT *
FROM rentors
INNER JOIN rentals
WHERE rentors.CustomerID = rentals.CustomerID AND rentals.BoatName = "Sorpresso";

-- selecting using comparison operators example

SELECT * FROM rentals
WHERE PaidAmount between 150 and 1200;

-- Update any record example

UPDATE rentors
SET CustomerName = 'Boris Dwayne'
WHERE CustomerId = 29647549 ;

SELECT * FROM rentors;

drop database Boat_Rentals;

