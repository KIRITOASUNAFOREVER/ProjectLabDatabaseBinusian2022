
-- Database System

CREATE DATABASE ProjectDB

USE ProjectDB

CREATE TABLE Staff(
	Staff_id VARCHAR(5) PRIMARY KEY,
	[Name] VARCHAR(50),
	Gender VARCHAR(10),
	Salary NUMERIC(20,2),
	Phone VARCHAR(15),
	CONSTRAINT StaffIDCon CHECK(Staff_id LIKE ('ST[0-9][0-9][0-9]')),
	CONSTRAINT StaffGenderCon CHECK(Gender LIKE 'MALE' OR Gender LIKE 'FEMALE'),
	CONSTRAINT StaffPhoneCon CHECK(LEN(Phone) >= 12)
)


CREATE TABLE Chef(
	Chef_id VARCHAR(5) PRIMARY KEY,
	[Name] VARCHAR(50),
	Experience VARCHAR(1000),
	CONSTRAINT ChefIDCon CHECK(Chef_id LIKE ('CH[0-9][0-9][0-9]'))
)


CREATE TABLE Customer(
	Customer_id VARCHAR(5) PRIMARY KEY,
	[Name] VARCHAR(50),
	Gender VARCHAR(10),
	[Date of Birth] VARCHAR(10),
	Phone VARCHAR(13),
	CONSTRAINT CustIDCon CHECK(Customer_id LIKE ('CS[0-9][0-9][0-9]')),
	CONSTRAINT CustGenderCon CHECK(Gender LIKE 'MALE' OR Gender LIKE 'FEMALE'),
	CONSTRAINT CustPhoneCon CHECK(LEN(Phone) = 12)
)


CREATE TABLE Vendor(
	Vendor_id VARCHAR(5) PRIMARY KEY,
	[Name] VARCHAR(50),
	[Address] VARCHAR(500),
	Phone VARCHAR(13),
	Email VARCHAR(30),
	CONSTRAINT VendorIDCon CHECK(Vendor_id LIKE ('VE[0-9][0-9][0-9]')),
	CONSTRAINT EmailCon CHECK(	Email LIKE '%@%' 
								AND 
								Email LIKE '%.com' 
								AND 
								LEFT(Email,1) <> '@'
								AND
								SUBSTRING(REVERSE(Email), 5, 1) <> '@' 
								)
)


CREATE TABLE Ingredient(
	Ingredient_id VARCHAR(5) PRIMARY KEY,
	[Name] VARCHAR(50),
	Price NUMERIC(11,2),
	CONSTRAINT IngredientIDCon CHECK(Ingredient_id LIKE ('IG[0-9][0-9][0-9]'))
)


CREATE TABLE Sandwich(
	Sandwich_id VARCHAR(5) PRIMARY KEY,
	[Name] VARCHAR(50),
	Sauce VARCHAR(20),
	Price NUMERIC(11,2),
	CONSTRAINT SandwichIDCon CHECK(Sandwich_id LIKE ('SW[0-9][0-9][0-9]')),
	CONSTRAINT PriceCon CHECK(Price BETWEEN 5000 AND 500000)
)


CREATE TABLE Purchase(
	Purchase_id VARCHAR(5) PRIMARY KEY,
	Staff_id VARCHAR(5) FOREIGN KEY REFERENCES Staff(Staff_id),
	[Date] VARCHAR(20),
	CONSTRAINT PurchaseIDCon CHECK(Purchase_id LIKE ('PH[0-9][0-9][0-9]')),
	CONSTRAINT PurchaseDateCon CHECK(
			[Date] <= getdate() 
		)
)


CREATE TABLE Purchasedetail(
	Purchase_id VARCHAR(5) FOREIGN KEY REFERENCES Purchase(Purchase_id),
	Ingredient_id VARCHAR(5) FOREIGN KEY REFERENCES Ingredient(Ingredient_id),
	Vendor_id VARCHAR(5) FOREIGN KEY REFERENCES Vendor(Vendor_id),
	Qty NUMERIC(5,0),
	PRIMARY KEY(Purchase_id, Ingredient_id),

)


CREATE TABLE Sales(
	Sales_id VARCHAR(5) PRIMARY KEY,
	Staff_id VARCHAR(5) FOREIGN KEY REFERENCES Staff(Staff_id),
	Customer_id VARCHAR(5) FOREIGN KEY REFERENCES Customer(Customer_id),
	Chef_id VARCHAR(5) FOREIGN KEY REFERENCES Chef(Chef_id),
	[Date] VARCHAR(20),

	CONSTRAINT SalesIDCon CHECK(Sales_id LIKE ('SH[0-9][0-9][0-9]')),
	CONSTRAINT SalesDateCon CHECK(
			[Date] <= getdate() 
		)
)


CREATE TABLE Salesdetail(
	Sales_id VARCHAR(5) FOREIGN KEY REFERENCES Sales(Sales_id),
	Sandwich_id VARCHAR(5) FOREIGN KEY REFERENCES Sandwich(Sandwich_id),
	SandwichQty Numeric(5,0),
	PRIMARY KEY(Sales_id, Sandwich_id),

)
