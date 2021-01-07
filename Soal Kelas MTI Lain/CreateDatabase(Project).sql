CREATE DATABASE RA_Laundry
GO
USE RA_Laundry

-- Create MsStaff
CREATE TABLE MsStaff(
	StaffId CHAR(5) PRIMARY KEY,
	StaffName VARCHAR(50),
	StaffAddress VARCHAR(100),
	StaffGender VARCHAR(10),
	StaffSalary NUMERIC(11,2),
	CONSTRAINT CekIdStaff CHECK(StaffId LIKE 'ST[0-9][0-9][0-9]')
)

-- Create MsVendor
CREATE TABLE MsVendor(
	VendorId CHAR(5) PRIMARY KEY,
	VendorName VARCHAR(50),
	VendorAddress VARCHAR(100),
	VendorPhone VARCHAR(13),
	CONSTRAINT CekIdVendor CHECK(VendorId LIKE 'VE[0-9][0-9][0-9]')
)
-- Create MsCustomer
CREATE TABLE MsCustomer(
	CustomerId CHAR(5) PRIMARY KEY,
	CustomerName VARCHAR(50),
	CustomerAddress VARCHAR(100),
	CustomerGender VARCHAR(10),
	CustomerDateOfBirth DATE,
	CONSTRAINT CekIdCustomer CHECK(CustomerId LIKE 'CU[0-9][0-9][0-9]')
)
-- Create MsMaterial
CREATE TABLE MsMaterial(
	MaterialId CHAR(5) PRIMARY KEY,
	MaterialName VARCHAR(50),
	MaterialType VARCHAR(25),
	MaterialPrice NUMERIC(11,2),
	CONSTRAINT CekIdMaterial CHECK(MaterialId LIKE 'MA[0-9][0-9][0-9]')
)
-- Create MsClothes
CREATE TABLE MsClothes(
	ClothesId CHAR(5) PRIMARY KEY,
	ClothesName VARCHAR(50),
	ClothesType VARCHAR(25),
	CONSTRAINT CekIdClothes CHECK(ClothesId LIKE 'CL[0-9][0-9][0-9]')
)
-- Create HeaderPurchaseTransaction 
CREATE TABLE HeaderPurchaseTransaction(
	PurchaseTransactionId CHAR(5) PRIMARY KEY,
	StaffId CHAR(5) REFERENCES MsStaff ON UPDATE CASCADE ON DELETE CASCADE,
	VendorId CHAR(5) REFERENCES MsVendor ON UPDATE CASCADE ON DELETE CASCADE,
	PurchaseDate DATE,
	CONSTRAINT CekIdPurchaseTransaction CHECK(PurchaseTransactionId LIKE 'PU[0-9][0-9][0-9]')
)
-- Create HeaderServiceTransaction
CREATE TABLE HeaderServiceTransaction(
	ServiceTransactionId CHAR(5) PRIMARY KEY,
	StaffId CHAR(5) REFERENCES MsStaff ON UPDATE CASCADE ON DELETE CASCADE,
	CustomerId CHAR(5) REFERENCES MsCustomer ON UPDATE CASCADE ON DELETE CASCADE,
	ServiceDate DATE,
	CONSTRAINT CekIdServiceTransaction CHECK(ServiceTransactionId LIKE 'SR[0-9][0-9][0-9]')
)
-- Create DetailPurchaseTransaction
CREATE TABLE DetailPurchaseTransaction(
	PurchaseTransactionId CHAR(5) REFERENCES HeaderPurchaseTransaction ON UPDATE CASCADE ON DELETE CASCADE,
	MaterialId CHAR(5) REFERENCES MsMaterial ON UPDATE CASCADE ON DELETE CASCADE,
	Quantity INT,
	PRIMARY KEY(PurchaseTransactionId, MaterialId)
)
--Create DetailServicesTransaction
CREATE TABLE DetailServiceTransaction(
	ServiceTransactionId CHAR(5) REFERENCES HeaderServiceTransaction ON UPDATE CASCADE ON DELETE CASCADE,
	ClothesId CHAR(5) REFERENCES MsClothes ON UPDATE CASCADE ON DELETE CASCADE,
	ServiceType VARCHAR(25),
	ServicePrice NUMERIC(11,2),
	PRIMARY KEY(ServiceTransactionId, ClothesId)
)
