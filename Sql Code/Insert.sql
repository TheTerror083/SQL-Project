use book_store;


INSERT INTO `book_store`.`Publisher` (`Publisher_name`) VALUES ('Moshe');
INSERT INTO `book_store`.`Publisher` (`Publisher_name`) VALUES ('Avi');
INSERT INTO `book_store`.`Publisher` (`Publisher_name`) VALUES ('Raz');
INSERT INTO `book_store`.`Publisher` (`Publisher_name`) VALUES ('Haim');
INSERT INTO `book_store`.`Publisher` (`Publisher_name`) VALUES ('Tal');
INSERT INTO `book_store`.`Publisher` (`Publisher_name`) VALUES ('Or');
INSERT INTO `book_store`.`Publisher` (`Publisher_name`) VALUES ('David');
INSERT INTO `book_store`.`Publisher` (`Publisher_name`) VALUES ('Dvir');
INSERT INTO `book_store`.`Publisher` (`Publisher_name`) VALUES ('zipi');
INSERT INTO `book_store`.`Publisher` (`Publisher_name`) VALUES ('Hen');

INSERT INTO `book_store`.`Lang` (`Lang_name`) VALUES ('English');
INSERT INTO `book_store`.`Lang` (`Lang_name`) VALUES ('Hebrew');
INSERT INTO `book_store`.`Lang` (`Lang_name`) VALUES ('French');
INSERT INTO `book_store`.`Lang` (`Lang_name`) VALUES ('Russian');
INSERT INTO `book_store`.`Lang` (`Lang_name`) VALUES ('Spanish');
INSERT INTO `book_store`.`Lang` (`Lang_name`) VALUES ('Japanese');
INSERT INTO `book_store`.`Lang` (`Lang_name`) VALUES ('Chinese');
INSERT INTO `book_store`.`Lang` (`Lang_name`) VALUES ('Portuguese');
INSERT INTO `book_store`.`Lang` (`Lang_name`) VALUES ('Arabic');
INSERT INTO `book_store`.`Lang` (`Lang_name`) VALUES ('Indian');

INSERT INTO `book_store`.`Author` (`Author_first_name`,`Author_last_name`) VALUES ('Gil','Rahmim');
INSERT INTO `book_store`.`Author` (`Author_first_name`,`Author_last_name`) VALUES ('Gydon','Arosh');
INSERT INTO `book_store`.`Author` (`Author_first_name`,`Author_last_name`) VALUES ('Usher','Victoria');
INSERT INTO `book_store`.`Author` (`Author_first_name`,`Author_last_name`) VALUES ('Uri','Alpasi');
INSERT INTO `book_store`.`Author` (`Author_first_name`,`Author_last_name`) VALUES ('Sagi','Rouben');
INSERT INTO `book_store`.`Author` (`Author_first_name`,`Author_last_name`) VALUES ('Asaf','Noa');
INSERT INTO `book_store`.`Author` (`Author_first_name`,`Author_last_name`) VALUES ('Yaniv','Manham');
INSERT INTO `book_store`.`Author` (`Author_first_name`,`Author_last_name`) VALUES ('Oren','Rotem');
INSERT INTO `book_store`.`Author` (`Author_first_name`,`Author_last_name`) VALUES ('Danial','Kadosh');
INSERT INTO `book_store`.`Author` (`Author_first_name`,`Author_last_name`) VALUES ('Ami','Mor');
INSERT INTO `book_store`.`Author` (`Author_first_name`,`Author_last_name`) VALUES ('Shir','benishti');

INSERT INTO `book_store`.`Translator` (`Translator_first_name`,`Translator_last_name`,`Lang_id`) VALUES ('Ron','Gor',1);
INSERT INTO `book_store`.`Translator` (`Translator_first_name`,`Translator_last_name`,`Lang_id`) VALUES ('Shilat','Yosf',2);
INSERT INTO `book_store`.`Translator` (`Translator_first_name`,`Translator_last_name`,`Lang_id`) VALUES ('Ravit','Shalom',5);
INSERT INTO `book_store`.`Translator` (`Translator_first_name`,`Translator_last_name`,`Lang_id`) VALUES ('Yontan','Ben-David',3);
INSERT INTO `book_store`.`Translator` (`Translator_first_name`,`Translator_last_name`) VALUES ('Amit','Alipaz');
INSERT INTO `book_store`.`Translator` (`Translator_first_name`,`Translator_last_name`) VALUES ('Gil','Shamim');
INSERT INTO `book_store`.`Translator` (`Translator_first_name`,`Translator_last_name`) VALUES ('Rotem','Adma');
INSERT INTO `book_store`.`Translator` (`Translator_first_name`,`Translator_last_name`) VALUES ('Hagit','Harov');
INSERT INTO `book_store`.`Translator` (`Translator_first_name`,`Translator_last_name`) VALUES ('Ronen','Gitim');
INSERT INTO `book_store`.`Translator` (`Translator_first_name`,`Translator_last_name`) VALUES ('Erez','Arosh');

INSERT INTO `book_store`.`Books` (`Book_name`,`Publisher_id`,`Year_published`,`Translator_id`,`Wieght`,`Pages`) VALUES ('Hello','1',1992,1,2.3,1500);
INSERT INTO `book_store`.`Books` (`Book_name`,`Publisher_id`,`Year_published`,`Translator_id`,`Wieght`,`Pages`) VALUES ('Harry Potter','5',2002,8,1.2,900);
INSERT INTO `book_store`.`Books` (`Book_name`,`Publisher_id`,`Year_published`,`Translator_id`,`Wieght`,`Pages`) VALUES ('Burning Soil','3',1952,2,4.2,150);
INSERT INTO `book_store`.`Books` (`Book_name`,`Publisher_id`,`Year_published`,`Translator_id`,`Wieght`,`Pages`) VALUES ('Blue Sky','3',2005,4,0.5,130);
INSERT INTO `book_store`.`Books` (`Book_name`,`Publisher_id`,`Year_published`,`Translator_id`,`Wieght`,`Pages`) VALUES ('Waterfall Of Sky','8',2005,6,0.9,80);
INSERT INTO `book_store`.`Books` (`Book_name`,`Publisher_id`,`Year_published`,`Translator_id`,`Wieght`,`Pages`) VALUES ('Paradise','7',2020,6,3.0,88);
INSERT INTO `book_store`.`Books` (`Book_name`,`Publisher_id`,`Year_published`,`Translator_id`,`Wieght`,`Pages`) VALUES ('Jurassic Park','4',2019,3,3.1,630);
INSERT INTO `book_store`.`Books` (`Book_name`,`Publisher_id`,`Year_published`,`Wieght`,`Pages`) VALUES ('Harry Potter','4',2015,2.1,87);
INSERT INTO `book_store`.`Books` (`Book_name`,`Publisher_id`,`Year_published`,`Wieght`,`Pages`) VALUES ('Raspberry juice','2',1952,2.2,42);
INSERT INTO `book_store`.`Books` (`Book_name`,`Publisher_id`,`Year_published`,`Wieght`,`Pages`) VALUES ('Twilight','1',1982,1.3,250);

INSERT INTO `book_store`.`Book_authors` (`Book_id`,`Author_id`) VALUES (1,1);
INSERT INTO `book_store`.`Book_authors` (`Book_id`,`Author_id`) VALUES (2,4);
INSERT INTO `book_store`.`Book_authors` (`Book_id`,`Author_id`) VALUES (3,6);
INSERT INTO `book_store`.`Book_authors` (`Book_id`,`Author_id`) VALUES (3,7);
INSERT INTO `book_store`.`Book_authors` (`Book_id`,`Author_id`) VALUES (3,8);
INSERT INTO `book_store`.`Book_authors` (`Book_id`,`Author_id`) VALUES (8,5);
INSERT INTO `book_store`.`Book_authors` (`Book_id`,`Author_id`) VALUES (5,8);
INSERT INTO `book_store`.`Book_authors` (`Book_id`,`Author_id`) VALUES (2,4);
INSERT INTO `book_store`.`Book_authors` (`Book_id`,`Author_id`) VALUES (4,5);
INSERT INTO `book_store`.`Book_authors` (`Book_id`,`Author_id`) VALUES (3,2);

INSERT INTO `book_store`.`Inventory` (`Book_id`,`Recive_date`,`Buy_price`,`Sell_price`,`Quantity`,`Conditions`,`Location`) VALUES (1,'1997-12-30',70,100,5,1,1);
INSERT INTO `book_store`.`Inventory` (`Book_id`,`Recive_date`,`Buy_price`,`Sell_price`,`Quantity`,`Conditions`,`Location`) VALUES (8,'2000-03-13',20,100,2,1,1);
INSERT INTO `book_store`.`Inventory` (`Book_id`,`Recive_date`,`Buy_price`,`Sell_price`,`Quantity`,`Conditions`,`Location`) VALUES (2,'1981-02-25',150,300,10,2,2);
INSERT INTO `book_store`.`Inventory` (`Book_id`,`Recive_date`,`Buy_price`,`Sell_price`,`Quantity`,`Conditions`,`Location`) VALUES (5,'1963-07-24',300,400,14,3,1);
INSERT INTO `book_store`.`Inventory` (`Book_id`,`Recive_date`,`Buy_price`,`Sell_price`,`Quantity`,`Conditions`,`Location`) VALUES (4,'2005-06-12',14,50,4,5,1);
INSERT INTO `book_store`.`Inventory` (`Book_id`,`Recive_date`,`Buy_price`,`Sell_price`,`Quantity`,`Conditions`,`Location`) VALUES (7,'2004-04-11',85,86,82,2,2);
INSERT INTO `book_store`.`Inventory` (`Book_id`,`Recive_date`,`Buy_price`,`Sell_price`,`Quantity`,`Conditions`,`Location`) VALUES (3,'1993-02-07',45,100,0,3,1);
INSERT INTO `book_store`.`Inventory` (`Book_id`,`Recive_date`,`Buy_price`,`Sell_price`,`Quantity`,`Conditions`,`Location`) VALUES (10,'1992-08-17',212,500,4,1,2);
INSERT INTO `book_store`.`Inventory` (`Book_id`,`Recive_date`,`Buy_price`,`Sell_price`,`Quantity`,`Conditions`,`Location`) VALUES (6,'1999-04-19',40,80,3,5,1);
INSERT INTO `book_store`.`Inventory` (`Book_id`,`Recive_date`,`Buy_price`,`Sell_price`,`Quantity`,`Conditions`,`Location`) VALUES (9,'2014-09-25',82,320,12,2,1);

INSERT INTO `book_store`.`Phone` (`Phone_num`) VALUES ('0502323145');
INSERT INTO `book_store`.`Phone` (`Phone_num`) VALUES ('0502116254');
INSERT INTO `book_store`.`Phone` (`Phone_num`) VALUES ('0508956445');
INSERT INTO `book_store`.`Phone` (`Phone_num`) VALUES ('0507485545');
INSERT INTO `book_store`.`Phone` (`Phone_num`) VALUES ('0501212145');
INSERT INTO `book_store`.`Phone` (`Phone_num`) VALUES ('0505656541');
INSERT INTO `book_store`.`Phone` (`Phone_num`) VALUES ('0504845123');
INSERT INTO `book_store`.`Phone` (`Phone_num`) VALUES ('0501256325');
INSERT INTO `book_store`.`Phone` (`Phone_num`) VALUES ('0505565564');
INSERT INTO `book_store`.`Phone` (`Phone_num`) VALUES ('0502235411');

INSERT INTO `book_store`.`Country` (`Country_name`) VALUES ('Israel');
INSERT INTO `book_store`.`Country` (`Country_name`) VALUES ('Russia');
INSERT INTO `book_store`.`Country` (`Country_name`) VALUES ('India');
INSERT INTO `book_store`.`Country` (`Country_name`) VALUES ('USA');
INSERT INTO `book_store`.`Country` (`Country_name`) VALUES ('UK');
INSERT INTO `book_store`.`Country` (`Country_name`) VALUES ('Germany');
INSERT INTO `book_store`.`Country` (`Country_name`) VALUES ('Netherlands');
INSERT INTO `book_store`.`Country` (`Country_name`) VALUES ('Thailand');
INSERT INTO `book_store`.`Country` (`Country_name`) VALUES ('Japan');
INSERT INTO `book_store`.`Country` (`Country_name`) VALUES ('China');

INSERT INTO `book_store`.`City` (`City_name`,`Country_id`) VALUES ('Krit-Shol',1);
INSERT INTO `book_store`.`City` (`City_name`,`Country_id`) VALUES ('Ofola',9);
INSERT INTO `book_store`.`City` (`City_name`,`Country_id`) VALUES ('Ramat-Gan',8);
INSERT INTO `book_store`.`City` (`City_name`,`Country_id`) VALUES ('Holon',5);
INSERT INTO `book_store`.`City` (`City_name`,`Country_id`) VALUES ('Ashdod',3);
INSERT INTO `book_store`.`City` (`City_name`,`Country_id`) VALUES ('Eilat',2);
INSERT INTO `book_store`.`City` (`City_name`,`Country_id`) VALUES ('Kriat-Smona',4);
INSERT INTO `book_store`.`City` (`City_name`,`Country_id`) VALUES ('Natnia',10);
INSERT INTO `book_store`.`City` (`City_name`,`Country_id`) VALUES ('Bar-Sheva',3);
INSERT INTO `book_store`.`City` (`City_name`,`Country_id`) VALUES ('Zpat',5);

INSERT INTO `book_store`.`Address` (`City_id`,`Address_postal_code`,`Address_street`) VALUES (1,'5584152','Krit Haim 4');
INSERT INTO `book_store`.`Address` (`City_id`,`Address_postal_code`,`Address_street`) VALUES (2,'2556144','Amaleh Slomo 90/85');
INSERT INTO `book_store`.`Address` (`City_id`,`Address_postal_code`,`Address_street`) VALUES (8,'6652121','Dov Itan 36');
INSERT INTO `book_store`.`Address` (`City_id`,`Address_postal_code`,`Address_street`) VALUES (7,'6654114','Yam Rode 12');
INSERT INTO `book_store`.`Address` (`City_id`,`Address_postal_code`,`Address_street`) VALUES (10,'4847712','Zock Atekva 82');
INSERT INTO `book_store`.`Address` (`City_id`,`Address_postal_code`,`Address_street`) VALUES (3,'2323654','Herzog 55/2');
INSERT INTO `book_store`.`Address` (`City_id`,`Address_postal_code`,`Address_street`) VALUES (4,'8889887','Aba Helal 80/10');
INSERT INTO `book_store`.`Address` (`City_id`,`Address_postal_code`,`Address_street`) VALUES (8,'4455445','Kfir 36/5');
INSERT INTO `book_store`.`Address` (`City_id`,`Address_postal_code`,`Address_street`) VALUES (4,'3363366','Iros 45');
INSERT INTO `book_store`.`Address` (`City_id`,`Address_postal_code`,`Address_street`) VALUES (3,'1212222','Zion 18');

INSERT INTO `book_store`.`Customers` (`First_name`,`Last_name`,`Address_id`,`Customer_phone`,`Join_date`) VALUES ('Yafit','Fron',1,1,'2020-01-07');
INSERT INTO `book_store`.`Customers` (`First_name`,`Last_name`,`Address_id`,`Customer_phone`,`Join_date`) VALUES ('Kobi','Levi',2,2,'2020-05-01');
INSERT INTO `book_store`.`Customers` (`First_name`,`Last_name`,`Address_id`,`Customer_phone`,`Join_date`) VALUES ('Galit','Dadon',5,9,'2020-03-04');
INSERT INTO `book_store`.`Customers` (`First_name`,`Last_name`,`Address_id`,`Customer_phone`,`Join_date`) VALUES ('Danit','Dalia',8,4,'2019-01-17');
INSERT INTO `book_store`.`Customers` (`First_name`,`Last_name`,`Address_id`,`Customer_phone`,`Join_date`) VALUES ('Sapir','Hafer',9,5,'2014-12-22');
INSERT INTO `book_store`.`Customers` (`First_name`,`Last_name`,`Address_id`,`Customer_phone`,`Join_date`) VALUES ('Michel','Ben-david',2,5,'2015-03-21');
INSERT INTO `book_store`.`Customers` (`First_name`,`Last_name`,`Address_id`,`Customer_phone`,`Join_date`) VALUES ('Sar','LevAri',4,5,'2017-04-21');
INSERT INTO `book_store`.`Customers` (`First_name`,`Last_name`,`Address_id`,`Customer_phone`,`Join_date`) VALUES ('Ofri','Dror',8,2,'2017-01-21');
INSERT INTO `book_store`.`Customers` (`First_name`,`Last_name`,`Address_id`,`Customer_phone`,`Join_date`) VALUES ('Sveta','Haim',10,2,'2016-09-12');
INSERT INTO `book_store`.`Customers` (`First_name`,`Last_name`,`Address_id`,`Customer_phone`,`Join_date`) VALUES ('Natali','Dolev',3,1,'2015-10-08');

INSERT INTO `book_store`.`Orders` (`Customer_ID`,`Order_date`,`LastModify_date`,`Employee_id`,`Payment_type`,`Total_price`,`Order_status`) VALUES (1,'2015-09-25','2020-01-01',1,1,100,1);
INSERT INTO `book_store`.`Orders` (`Customer_ID`,`Order_date`,`LastModify_date`,`Employee_id`,`Payment_type`,`Total_price`,`Order_status`) VALUES (1,'2019-10-06','2020-01-02',2,2,150,2);
INSERT INTO `book_store`.`Orders` (`Customer_ID`,`Order_date`,`LastModify_date`,`Employee_id`,`Payment_type`,`Total_price`,`Order_status`) VALUES (2,'2018-10-12','2020-01-03',8,3,180,3);
INSERT INTO `book_store`.`Orders` (`Customer_ID`,`Order_date`,`LastModify_date`,`Employee_id`,`Payment_type`,`Total_price`,`Order_status`) VALUES (3,'2018-11-01','2020-02-02',10,3,13,4);
INSERT INTO `book_store`.`Orders` (`Customer_ID`,`Order_date`,`LastModify_date`,`Employee_id`,`Payment_type`,`Total_price`,`Order_status`) VALUES (4,'2017-12-13','2020-02-03',5,3,80,5);
INSERT INTO `book_store`.`Orders` (`Customer_ID`,`Order_date`,`LastModify_date`,`Employee_id`,`Payment_type`,`Total_price`,`Order_status`) VALUES (5,'2020-01-25','2020-02-03',4,2,13,3);
INSERT INTO `book_store`.`Orders` (`Customer_ID`,`Order_date`,`LastModify_date`,`Employee_id`,`Payment_type`,`Total_price`,`Order_status`) VALUES (8,'2020-01-01','2020-04-28',3,2,50,5);
INSERT INTO `book_store`.`Orders` (`Customer_ID`,`Order_date`,`LastModify_date`,`Employee_id`,`Payment_type`,`Total_price`,`Order_status`) VALUES (9,'2020-01-24','2020-08-04',3,3,60,3);
INSERT INTO `book_store`.`Orders` (`Customer_ID`,`Order_date`,`LastModify_date`,`Employee_id`,`Payment_type`,`Total_price`,`Order_status`) VALUES (10,'2020-05-12','2020-05-28',3,1,110,2);
INSERT INTO `book_store`.`Orders` (`Customer_ID`,`Order_date`,`LastModify_date`,`Employee_id`,`Payment_type`,`Total_price`,`Order_status`) VALUES (2,'2020-05-13','2020-08-04',2,2,890,1);



INSERT INTO `book_store`.`Company` (`Company_name`) VALUES ("Israel-Post");
INSERT INTO `book_store`.`Company` (`Company_name`) VALUES ("XPress");

INSERT INTO `book_store`.`Shipment_method` (`Company_id`,`Method_type`,`Method_price_per_kilo`) VALUES (1,"Courier-service",10);
INSERT INTO `book_store`.`Shipment_method` (`Company_id`,`Method_type`,`Method_price_per_kilo`) VALUES (1,"Fast courier mail",30);
INSERT INTO `book_store`.`Shipment_method` (`Company_id`,`Method_type`,`Method_price_per_kilo`) VALUES (2,"Pick-Up",20);
INSERT INTO `book_store`.`Shipment_method` (`Company_id`,`Method_type`,`Method_price_per_kilo`) VALUES (2,"Delivery-To-House",50);

INSERT INTO `book_store`.`Shipments` (`Order_id`,`Shipment_method_id`,`Address_id`,`Order_status`) VALUES (1,1,1,1);
INSERT INTO `book_store`.`Shipments` (`Order_id`,`Shipment_method_id`,`Address_id`,`Order_status`) VALUES (2,2,2,4);
INSERT INTO `book_store`.`Shipments` (`Order_id`,`Shipment_method_id`,`Address_id`,`Order_status`) VALUES (5,3,3,2);
INSERT INTO `book_store`.`Shipments` (`Order_id`,`Shipment_method_id`,`Address_id`,`Order_status`) VALUES (8,4,4,3);
INSERT INTO `book_store`.`Shipments` (`Order_id`,`Shipment_method_id`,`Address_id`,`Order_status`) VALUES (4,4,5,4);
INSERT INTO `book_store`.`Shipments` (`Order_id`,`Shipment_method_id`,`Address_id`,`Order_status`) VALUES (6,3,7,2);
INSERT INTO `book_store`.`Shipments` (`Order_id`,`Shipment_method_id`,`Address_id`,`Order_status`) VALUES (4,2,6,3);
INSERT INTO `book_store`.`Shipments` (`Order_id`,`Shipment_method_id`,`Address_id`,`Order_status`) VALUES (2,2,8,4);
INSERT INTO `book_store`.`Shipments` (`Order_id`,`Shipment_method_id`,`Address_id`,`Order_status`) VALUES (8,3,9,2);
INSERT INTO `book_store`.`Shipments` (`Order_id`,`Shipment_method_id`,`Address_id`,`Order_status`) VALUES (2,1,10,1);

INSERT INTO `book_store`.`Book_order` (`Book_id`,`Order_id`,`Quantity`,`Shipment_id`,`Sell_price`) VALUES (2,5,2,2,781);
INSERT INTO `book_store`.`Book_order` (`Book_id`,`Order_id`,`Quantity`,`Shipment_id`,`Sell_price`) VALUES (4,2,5,6,12);
INSERT INTO `book_store`.`Book_order` (`Book_id`,`Order_id`,`Quantity`,`Shipment_id`,`Sell_price`) VALUES (2,1,6,4,484);
INSERT INTO `book_store`.`Book_order` (`Book_id`,`Order_id`,`Quantity`,`Shipment_id`,`Sell_price`) VALUES (8,4,1,4,102);
INSERT INTO `book_store`.`Book_order` (`Book_id`,`Order_id`,`Quantity`,`Shipment_id`,`Sell_price`) VALUES (6,2,52,2,98);
INSERT INTO `book_store`.`Book_order` (`Book_id`,`Order_id`,`Quantity`,`Shipment_id`,`Sell_price`) VALUES (4,7,1,9,184);
INSERT INTO `book_store`.`Book_order` (`Book_id`,`Order_id`,`Quantity`,`Shipment_id`,`Sell_price`) VALUES (5,10,21,4,122);
INSERT INTO `book_store`.`Book_order` (`Book_id`,`Order_id`,`Quantity`,`Shipment_id`,`Sell_price`) VALUES (3,3,5,2,14);
INSERT INTO `book_store`.`Book_order` (`Book_id`,`Order_id`,`Quantity`,`Shipment_id`,`Sell_price`) VALUES (4,5,4,1,123);
INSERT INTO `book_store`.`Book_order` (`Book_id`,`Order_id`,`Quantity`,`Shipment_id`,`Sell_price`) VALUES (9,9,2,7,25);

INSERT INTO `book_store`.`Employees` (`Employee_first_name`,`Employee_last_name`,`Employee_phone`,`Address_id`,`Join_date`,`Leave_date`) VALUES ("Dvir","Arosh",1,1,'2015-05-13','2020-05-08');
INSERT INTO `book_store`.`Employees` (`Employee_first_name`,`Employee_last_name`,`Employee_phone`,`Address_id`,`Join_date`,`Leave_date`) VALUES ("Moshe","Zipor",5,8,'2016-01-13','2020-03-05');
INSERT INTO `book_store`.`Employees` (`Employee_first_name`,`Employee_last_name`,`Employee_phone`,`Address_id`,`Join_date`,`Leave_date`) VALUES ("Natali","Dan",4,3,'2017-02-13','2020-03-03');
INSERT INTO `book_store`.`Employees` (`Employee_first_name`,`Employee_last_name`,`Employee_phone`,`Address_id`,`Join_date`,`Leave_date`) VALUES ("Yosi","Halomi",2,8,'2018-03-13','2019-08-02');
INSERT INTO `book_store`.`Employees` (`Employee_first_name`,`Employee_last_name`,`Employee_phone`,`Address_id`,`Join_date`,`Leave_date`) VALUES ("Shimson","Dvora",9,10,'2019-10-13','2020-03-01');
INSERT INTO `book_store`.`Employees` (`Employee_first_name`,`Employee_last_name`,`Employee_phone`,`Address_id`,`Join_date`) VALUES ("Rafi","Perze",5,5,'2015-12-13');
INSERT INTO `book_store`.`Employees` (`Employee_first_name`,`Employee_last_name`,`Employee_phone`,`Address_id`,`Join_date`) VALUES ("Mordhi","Katan",2,5,'2018-06-19');
INSERT INTO `book_store`.`Employees` (`Employee_first_name`,`Employee_last_name`,`Employee_phone`,`Address_id`,`Join_date`) VALUES ("Avi","Jone",5,2,'2015-07-22');
INSERT INTO `book_store`.`Employees` (`Employee_first_name`,`Employee_last_name`,`Employee_phone`,`Address_id`,`Join_date`) VALUES ("Aldar","SerTov",6,6,'2014-03-23');
INSERT INTO `book_store`.`Employees` (`Employee_first_name`,`Employee_last_name`,`Employee_phone`,`Address_id`,`Join_date`) VALUES ("Lidor","Moshe",10,10,'2020-01-30');

INSERT INTO `book_store`.`Salaries` (`Employee_id`,`Salary_hour_num`,`Salary_amount_per_hour`,`Salary_month`,`Salary_year`) VALUES (1,50,29,1,2020);
INSERT INTO `book_store`.`Salaries` (`Employee_id`,`Salary_hour_num`,`Salary_amount_per_hour`,`Salary_month`,`Salary_year`) VALUES (2,70,31,2,2019);
INSERT INTO `book_store`.`Salaries` (`Employee_id`,`Salary_hour_num`,`Salary_amount_per_hour`,`Salary_month`,`Salary_year`) VALUES (3,40,35,3,2018);
INSERT INTO `book_store`.`Salaries` (`Employee_id`,`Salary_hour_num`,`Salary_amount_per_hour`,`Salary_month`,`Salary_year`) VALUES (4,54,41,4,2018);
INSERT INTO `book_store`.`Salaries` (`Employee_id`,`Salary_hour_num`,`Salary_amount_per_hour`,`Salary_month`,`Salary_year`) VALUES (6,47,42,12,2017);
INSERT INTO `book_store`.`Salaries` (`Employee_id`,`Salary_hour_num`,`Salary_amount_per_hour`,`Salary_month`,`Salary_year`) VALUES (5,250,25,11,2020);
INSERT INTO `book_store`.`Salaries` (`Employee_id`,`Salary_hour_num`,`Salary_amount_per_hour`,`Salary_month`,`Salary_year`) VALUES (7,100,45,12,2020);
INSERT INTO `book_store`.`Salaries` (`Employee_id`,`Salary_hour_num`,`Salary_amount_per_hour`,`Salary_month`,`Salary_year`) VALUES (8,180,52,12,2020);
INSERT INTO `book_store`.`Salaries` (`Employee_id`,`Salary_hour_num`,`Salary_amount_per_hour`,`Salary_month`,`Salary_year`) VALUES (9,170,30,12,2020);
INSERT INTO `book_store`.`Salaries` (`Employee_id`,`Salary_hour_num`,`Salary_amount_per_hour`,`Salary_month`,`Salary_year`) VALUES (10,142,40,9,2020);

INSERT INTO `book_store`.`Payments` (`Payment_type`,`Payment_month`,`Payment_year`,`Payment_amount`) VALUES (9,5,2020,20);
INSERT INTO `book_store`.`Payments` (`Payment_type`,`Payment_month`,`Payment_year`,`Payment_amount`) VALUES (8,6,2020,12);
INSERT INTO `book_store`.`Payments` (`Payment_type`,`Payment_month`,`Payment_year`,`Payment_amount`) VALUES (7,7,2020,125);
INSERT INTO `book_store`.`Payments` (`Payment_type`,`Payment_month`,`Payment_year`,`Payment_amount`) VALUES (6,8,2020,12);
INSERT INTO `book_store`.`Payments` (`Payment_type`,`Payment_month`,`Payment_year`,`Payment_amount`) VALUES (5,12,2019,421);
INSERT INTO `book_store`.`Payments` (`Payment_type`,`Payment_month`,`Payment_year`,`Payment_amount`) VALUES (4,11,2019,445);
INSERT INTO `book_store`.`Payments` (`Payment_type`,`Payment_month`,`Payment_year`,`Payment_amount`) VALUES (3,2,2020,125);
INSERT INTO `book_store`.`Payments` (`Payment_type`,`Payment_month`,`Payment_year`,`Payment_amount`) VALUES (2,2,2020,124);
INSERT INTO `book_store`.`Payments` (`Payment_type`,`Payment_month`,`Payment_year`,`Payment_amount`) VALUES (1,4,2020,560);
INSERT INTO `book_store`.`Payments` (`Payment_type`,`Payment_month`,`Payment_year`,`Payment_amount`) VALUES (3,8,2020,21);
INSERT INTO `book_store`.`Payments` (`Payment_type`,`Payment_month`,`Payment_year`,`Payment_amount`) VALUES (3,8,2020,500);

INSERT INTO `book_store`.`Stoe_order` (`Book_id`,`Quantity`,`Total_price`,`Order_date`) VALUES (1,2,82,'2015-09-22');
INSERT INTO `book_store`.`Stoe_order` (`Book_id`,`Quantity`,`Total_price`,`Order_date`) VALUES (2,3,150,'2020-08-25');
INSERT INTO `book_store`.`Stoe_order` (`Book_id`,`Quantity`,`Total_price`,`Order_date`) VALUES (3,4,46,'2019-06-23');
INSERT INTO `book_store`.`Stoe_order` (`Book_id`,`Quantity`,`Total_price`,`Order_date`) VALUES (3,5,35,'2018-12-12');
INSERT INTO `book_store`.`Stoe_order` (`Book_id`,`Quantity`,`Total_price`,`Order_date`) VALUES (4,1,12,'2017-10-14');
INSERT INTO `book_store`.`Stoe_order` (`Book_id`,`Quantity`,`Total_price`,`Order_date`) VALUES (9,1,52,'2016-08-02');
INSERT INTO `book_store`.`Stoe_order` (`Book_id`,`Quantity`,`Total_price`,`Order_date`) VALUES (10,3,452,'2020-01-07');
INSERT INTO `book_store`.`Stoe_order` (`Book_id`,`Quantity`,`Total_price`,`Order_date`) VALUES (5,2,42,'2011-04-06');
INSERT INTO `book_store`.`Stoe_order` (`Book_id`,`Quantity`,`Total_price`,`Order_date`) VALUES (7,5,87,'2018-05-06');
INSERT INTO `book_store`.`Stoe_order` (`Book_id`,`Quantity`,`Total_price`,`Order_date`) VALUES (8,2,65,'2002-02-25');