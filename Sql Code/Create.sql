DROP DATABASE  IF EXISTS book_store ;
CREATE DATABASE IF NOT EXISTS book_store ;

USE book_store;

CREATE TABLE Books (
    Book_id INTEGER AUTO_INCREMENT,
    Book_name VARCHAR(55) NOT NULL,
    Publisher_id INTEGER,
    Year_published YEAR,
    Translator_id INTEGER,
    Wieght FLOAT,
    Pages INTEGER,
    PRIMARY KEY (Book_id)
);
        
CREATE TABLE Publisher (
    Publisher_id INTEGER AUTO_INCREMENT,
    Publisher_name VARCHAR(55) NOT NULL,
    PRIMARY KEY (Publisher_id)
);
    
CREATE TABLE Translator (
    Translator_id INTEGER AUTO_INCREMENT,
    Translator_first_name VARCHAR(55) NOT NULL,
    Translator_last_name VARCHAR(55) NOT NULL,
    Lang_id INTEGER,
    PRIMARY KEY (Translator_id)
);
    
CREATE TABLE Lang (
    Lang_id INTEGER AUTO_INCREMENT,
    Lang_name VARCHAR(55) NOT NULL,
    PRIMARY KEY (Lang_id)
);
    
CREATE TABLE Author (
    Author_id INTEGER AUTO_INCREMENT,
    Author_first_name VARCHAR(55) NOT NULL,
    Author_last_name VARCHAR(55) NOT NULL,
    PRIMARY KEY (Author_id)
);
    
CREATE TABLE Book_authors (
    Book_authors_id INTEGER AUTO_INCREMENT,
    Book_id INTEGER,
    Author_id INTEGER,
    PRIMARY KEY (Book_authors_id),
    FOREIGN KEY (Book_id)
        REFERENCES Books (Book_id),
    FOREIGN KEY (Author_id)
        REFERENCES Author (Author_id)
);
    
    ALTER TABLE Books	
	ADD FOREIGN KEY (Translator_id)
	REFERENCES Translator (Translator_id);
    
    ALTER TABLE Books	
	ADD FOREIGN KEY (Publisher_id)
	REFERENCES Publisher (Publisher_id);
    
    ALTER TABLE Translator	
	ADD FOREIGN KEY (Lang_id)
	REFERENCES Lang (Lang_id);
    
    
	CREATE TABLE Inventory (
    Inventory_id INTEGER AUTO_INCREMENT,
    Book_id INTEGER,
    Recive_date DATE,
    Buy_price INTEGER,
    Sell_price INTEGER,
    Quantity INTEGER,
    Conditions ENUM('Poor', 'Fair', 'Good', 'As New', 'New'),
    Location ENUM('Store', 'Storage'),
    PRIMARY KEY (Inventory_id),
    FOREIGN KEY (Book_id)
        REFERENCES Books (Book_id)
)  ENGINE=INNODB;
    
    
CREATE TABLE Customers (
    Customer_ID INTEGER AUTO_INCREMENT,
    First_name VARCHAR(55) NOT NULL,
    Last_name VARCHAR(55) NOT NULL,
    Address_id INTEGER,
    Customer_phone INTEGER,
    Join_date DATE,
    PRIMARY KEY (Customer_ID)
);

CREATE TABLE Phone (
    Phone_id INTEGER AUTO_INCREMENT,
    Phone_num VARCHAR(55),
    PRIMARY KEY (Phone_id)
);
    
    
CREATE TABLE Address (
    Address_id INTEGER AUTO_INCREMENT,
    City_id INTEGER,
    Address_postal_code VARCHAR(55),
    Address_street VARCHAR(55) NOT NULL,
    PRIMARY KEY (Address_id)
);
    
CREATE TABLE City (
    City_id INTEGER AUTO_INCREMENT,
    City_name VARCHAR(55) NOT NULL,
    Country_id INTEGER,
    PRIMARY KEY (City_id)
);
	
CREATE TABLE Country (
    Country_id INTEGER AUTO_INCREMENT,
    Country_name VARCHAR(55) NOT NULL,
    PRIMARY KEY (Country_id)
);	
    
    ALTER TABLE Customers	
	ADD FOREIGN KEY (Address_id)
	REFERENCES Address (Address_id);
    
    ALTER TABLE Address	
	ADD FOREIGN KEY (City_id)
	REFERENCES City (City_id);
    
    ALTER TABLE city	
	ADD FOREIGN KEY (Country_id)
	REFERENCES Country (Country_id);
    
    ALTER TABLE Customers
        ADD FOREIGN KEY (Customer_phone)
        REFERENCES Phone (Phone_id);
    
CREATE TABLE Orders (
    Order_id INTEGER AUTO_INCREMENT,
    Customer_ID INTEGER,
    Order_date DATE,
    LastModify_date DATE,
    Employee_id INTEGER,
    Payment_type ENUM('Credit-Card', 'Bit', 'Bank-Transfer'),
    Total_price INTEGER,
    Order_status ENUM('InOrder', 'NeedToCall', 'CustomerInformed', 'Fails', 'Completed'),
    PRIMARY KEY (Order_id),
    FOREIGN KEY (Customer_ID)
        REFERENCES Customers (Customer_ID)
);
    
CREATE TABLE Book_order (
    Book_order_id INTEGER AUTO_INCREMENT,
    Book_id INTEGER,
    Order_id INTEGER,
    Quantity INTEGER,
    Shipment_id INTEGER,
    Sell_price INTEGER,
    PRIMARY KEY (Book_order_id),
    FOREIGN KEY (Book_id)
        REFERENCES Books (Book_id),
    FOREIGN KEY (Order_id)
        REFERENCES Orders (Order_id)
);
    
    
CREATE TABLE Shipments (
    Shipment_id INTEGER AUTO_INCREMENT,
    Order_id INTEGER,
    Shipment_method_id INTEGER,
    Address_id INTEGER,
    Order_status ENUM('Inprogress', 'Shipped', 'Arrived', 'Deliverd'),
    PRIMARY KEY (Shipment_id),
    FOREIGN KEY (Order_id)
        REFERENCES Orders (Order_id),
    FOREIGN KEY (Address_id)
        REFERENCES Address (Address_id)
);
    
CREATE TABLE Shipment_method (
    Shipment_method_id INTEGER AUTO_INCREMENT,
    Company_id INTEGER,
    Method_type VARCHAR(55),
	Method_price_per_kilo INTEGER,
    PRIMARY KEY (Shipment_method_id)
);
    
CREATE TABLE Company (
    Company_id INTEGER AUTO_INCREMENT,
    Company_name VARCHAR(55),
    PRIMARY KEY (Company_id)
)  ENGINE=INNODB;
    
	ALTER TABLE Book_order	
	ADD FOREIGN KEY (Shipment_id)
	REFERENCES Shipments (Shipment_id);
    
    ALTER TABLE Shipments	
	ADD FOREIGN KEY (Shipment_method_id)
	REFERENCES Shipment_method (Shipment_method_id);
    
    ALTER TABLE Shipment_method	
	ADD FOREIGN KEY (Company_id)
	REFERENCES Company (Company_id);
    
	CREATE TABLE Employees (
    Employee_id INTEGER AUTO_INCREMENT,
    Employee_first_name VARCHAR(55),
    Employee_last_name VARCHAR(55),
    Employee_phone INT,
    Address_id INTEGER,
    Join_date DATE,
    Leave_date DATE,
    PRIMARY KEY (Employee_id),
    FOREIGN KEY (Employee_phone)
        REFERENCES Phone (phone_id),
    FOREIGN KEY (Address_id)
        REFERENCES Address (Address_id)
);
    
CREATE TABLE Salaries (
    Salary_id INTEGER AUTO_INCREMENT,
    Employee_id INTEGER,
    Salary_hour_num INTEGER,
    Salary_amount_per_hour INTEGER,
    Salary_month ENUM('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'),
    Salary_year YEAR,
    PRIMARY KEY (Salary_id),
    FOREIGN KEY (Employee_id)
        REFERENCES Employees (Employee_id)
);

    
CREATE TABLE Payments (
    Payment_id INTEGER AUTO_INCREMENT,
    Payment_type ENUM('Rent', 'Water', 'Electric', 'Bulding-tax', 'Line-phone', 'Cell-phone', 'Salaries', 'Delivries', 'Other'),
    Payment_month ENUM('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'),
    Payment_year YEAR,
    Payment_amount INTEGER,
    PRIMARY KEY (Payment_id)
);

CREATE TABLE Stoe_order (
    Stoe_order_id INTEGER AUTO_INCREMENT,
    Book_id INTEGER,
    Quantity INTEGER,
	Total_price INTEGER,
    Order_date Date,
    PRIMARY KEY (Stoe_order_id),
    FOREIGN KEY (Book_id)
        REFERENCES Books (Book_id)
);
    