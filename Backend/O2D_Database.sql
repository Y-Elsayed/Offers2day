CREATE DATABASE Offers2Day;
USE Offers2day;
/* <table_name> Table

<Table_description.
	Contains what the table is created for and it's purpose.
>

Attributes:
	<Contains the attributes inside the table in the formate of
	<attribute_name> (<attribute_type>)
	>

*/
CREATE TABLE Customers (
	userID INT AUTO_INCREMENT,
	firstName VARCHAR(249),
	lastName VARCHAR(249),
	userName VARCHAR(249) UNIQUE,
	userPFP BLOB,
	email VARCHAR(50),
	gender VARCHAR(6) CHECK (gender in ('Male', 'Female')),
	birthDate DATE,
	phoneNumber VARCHAR(11),
	PRIMARY KEY (userID)
);

CREATE TABLE CustomerPasswords (
	userID INT,
	customerPassword VARCHAR(50),
	PRIMARY KEY (userID, customerPassword),
	FOREIGN KEY (userID) REFERENCES Customers (userID) ON DELETE CASCADE
);

/* Business Table

The table that contains all the nessesary information for the
business in the database.

Attributes:
	businessID (int):
	businessName (string):
	businessType (string):
	description (string)
	address (string):
	email (string):
	status (char):

*/
CREATE TABLE Businesses (
	businessID INT AUTO_INCREMENT,
	businessName VARCHAR(249) UNIQUE,
	businessType VARCHAR(15),
	businessLogo BLOB,
	businessDescription NCHAR, -- Placed in quotes as it conflicts with a keyword
	businessAddress VARCHAR(150), -- Placed in quotes as it conflicts with a keyword
	businessEmail VARCHAR(50),
	businessStatus CHAR(1),
	PRIMARY KEY (businessID)
);

CREATE TABLE BusinessPasswords (
	businessID INT,
	businessPassword VARCHAR(50),
	PRIMARY KEY (businessID, businessPassword),
	FOREIGN KEY (businessID) REFERENCES Businesses (businessID) ON DELETE CASCADE
);

/* <table_name> Table

<Table_description.
	Contains what the table is created for and it's purpose.
>

Attributes:
	<Contains the attributes inside the table in the formate of
	<attribute_name> (<attribute_type>)
	>

*/
CREATE TABLE Offers (
	offerID INT AUTO_INCREMENT,
	offerTitle VARCHAR(50),
	offerDescription NCHAR, -- Placed in quotes as it conflicts with a keyword
	offerPrice INT,
	offerStartDate DATE,
	offerEndDate DATE,
	offerStatus VARCHAR(1),
	offerImg BLOB,
	PRIMARY KEY (offerID)
);

CREATE TABLE Favorites (
	userID INT,
	offerID INT,
	PRIMARY KEY (userID, offerID),
	FOREIGN KEY (userID) REFERENCES Customers (userID) ON DELETE CASCADE,
	FOREIGN KEY (offerID) REFERENCES Offers (offerID) ON DELETE CASCADE
);

CREATE TABLE Posts (
	offerID INT,
	businessID INT,
	PRIMARY KEY (offerID, businessID),
	FOREIGN KEY (businessID) REFERENCES Businesses (businessID) ON DELETE CASCADE,
	FOREIGN KEY (offerID) REFERENCES Offers (offerID)
);

/* <table_name> Table

<Table_description.
	Contains what the table is created for and it's purpose.
>

Attributes:
	<Contains the attributes inside the table in the formate of
	<attribute_name> (<attribute_type>)
	>

*/
CREATE TABLE Admins (
	adminID INT AUTO_INCREMENT,
	adminName VARCHAR(249) UNIQUE,
	PRIMARY KEY (adminID)
);

CREATE TABLE AdminPassowrds (
	adminID INT,
	adminPassword VARCHAR(50),
	PRIMARY KEY (adminID, adminPassword),
	FOREIGN KEY (adminID) REFERENCES Admins (adminID) ON DELETE CASCADE
);

-- DROP DATABASE Offers2Day