CREATE DATABASE Offers2Day;
USE Offers2Day;

/* Customers Table

This table contains all the information of the customers in
the application.

Attributes:
	PK userID (int): The unique attribute assigned to each user. Starting at 1 and increments by 1.
	firstName (string): The customer's first name.
	lastName (string): The customer's last name.
	userName (string): The customer's application user name.
	userPFP (blob): The customer's profile picture.
	email (string): The customer's email.
	gender (string): The customer's gender.
	birthDate (date): The customer's birth date.
	phoneNumber (string): The customer's phone number.

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
	businessID (int): The unique attribute assigned to each business. Starting at 1 and increments by 1.
	businessName (string): The business's name.
	businessType (string): The business's type. Which could be one of three things (Hyper Markets, Clothing Stores or Food Stores).
	description (string): A brief description about the business.
	address (string): The address of the business.
	email (string): The business's email.
	status (char): The status on the business which could be one of 3 things ('A': Approved, 'P': Pending or 'R': Rejected).

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

/* Offers Table

This table contains the basic info about the offer that the businesses
places onto our application.

Attributes:
	offerID (int): The unique attribute assigned to each offer. Starting at 1 and increments by 1.
	title (string): The offer's title.
	description (string): The offer's description.
	price (int): The offer's price.
	startDate (date): The offer's start date.
	endDate (date): The offer's end date.
	status (char): The offer's status which could be either ('A': Active, 'I': Inactive).
	img (blob): The offer's image.

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

/* Admins Table

This table contains all the information needed to be known on each admin.

Attributes:
	adminID (int): The unique attribute assigned to each admin. Starting at 1 and increments by 1.
	adminName (string): The name of the admin.

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