CREATE OR REPLACE view book_copy as
SELECT 
    Book_name,Quantity
FROM
    book_store.book_order o
        INNER JOIN
    books b ON b.Book_id = o.Book_id;
    
CREATE OR REPLACE view Best_author as    
    SELECT 
    Author_first_name,Author_last_name,o.Order_date
FROM
    book_store.orders o
         INNER JOIN
     book_order b 
ON b.Order_id = o.Order_id
 INNER JOIN
     book_authors ba 
ON ba.Book_id = b.Book_id
 INNER JOIN
     author a 
ON a.Author_id = ba.Author_id
GROUP BY `Author_first_name`
    ORDER BY COUNT(Author_first_name) DESC;
    
    SELECT * FROM book_store.orders;

CREATE OR REPLACE view Best_customer as  
SELECT 
        c.Customer_ID,SUM(Quantity) as Quantity,First_name,Last_name
FROM
    book_store.orders o
         INNER JOIN
     customers c 
ON c.Customer_ID = o.Customer_ID
         INNER JOIN
     book_order bo 
ON bo.Order_id = o.Order_id
GROUP BY Customer_ID
ORDER BY Quantity DESC
limit 3;

CREATE OR REPLACE view Most_translated as  
SELECT 
        Book_name,count(Translator_id)
FROM
    book_store.books b
    GROUP BY Book_name
ORDER BY count(Translator_id) DESC limit 1;

CREATE OR REPLACE view Customer_buy_history as  
SELECT 
        Book_name,Order_date,Quantity,Sell_price,c.Customer_ID
FROM
    book_store.customers c
    
    INNER JOIN
     orders o 
ON c.Customer_ID = o.Customer_ID
INNER JOIN
     book_order bo 
ON bo.Order_id = o.Order_id
INNER JOIN
     books ba 
ON ba.Book_id = bo.Book_id;

CREATE OR REPLACE view Customer_Order_history as  
SELECT 
        Book_name,Order_date,bo.Quantity,bo.Sell_price,Order_status,o.Customer_ID
FROM
    book_store.customers c
    
    INNER JOIN
     orders o 
ON c.Customer_ID = o.Customer_ID
INNER JOIN
     book_order bo 
ON bo.Order_id = o.Order_id
INNER JOIN
     books ba 
ON ba.Book_id = bo.Book_id
INNER JOIN
   inventory   inv
ON inv.Book_id = bo.Book_id
 order by Order_date;
 
 CREATE OR REPLACE view Shipping_cost as 
 SELECT 
         Quantity,Wieght,Method_price_per_kilo,COALESCE(Quantity,0)*COALESCE(Wieght,0)*COALESCE(Method_price_per_kilo,0) as Total_shipping_cost,o.Order_id
FROM
    book_store.orders o
    INNER JOIN
     book_order bo 
ON o.Order_id = bo.Order_id
INNER JOIN
     books ba 
ON ba.Book_id = bo.Book_id
INNER JOIN
     shipments sh 
ON bo.Shipment_id = sh.Shipment_id
INNER JOIN
     shipment_method sh_me
ON sh_me.Shipment_method_id = sh.Shipment_method_id;
 
  CREATE OR REPLACE view Ship_num_in_order as 
 SELECT 
        o.Order_id,count(bo.Shipment_id) as Num_os_shippment,Customer_ID
FROM
    book_store.orders o
         INNER JOIN
     book_order bo 
ON bo.Order_id = o.Order_id
INNER JOIN
     shipments sh 
ON bo.Shipment_id = sh.Shipment_id
INNER JOIN
     shipment_method sh_me
ON sh_me.Shipment_method_id = sh.Shipment_method_id
GROUP BY Order_id
ORDER BY Order_id DESC;

  CREATE OR REPLACE view Details_split_shipping as 
SELECT 
       Order_date,sh.Order_status,Address_street, o.Order_id
FROM
    book_store.orders o
         INNER JOIN
     book_order bo 
ON bo.Order_id = o.Order_id
INNER JOIN
     shipments sh 
ON bo.Shipment_id = sh.Shipment_id
INNER JOIN
     shipment_method sh_me
ON sh_me.Shipment_method_id = sh.Shipment_method_id
INNER JOIN
     address ad
ON sh.Address_id = ad.Address_id;

  CREATE OR REPLACE view XPress_Total_Month as 
SELECT 
		Total_price, o.Order_date
FROM
    book_store.orders o
    INNER JOIN
     book_order bo 
ON o.Order_id = bo.Order_id
INNER JOIN
     books ba 
ON ba.Book_id = bo.Book_id
INNER JOIN
     shipments sh 
ON bo.Shipment_id = sh.Shipment_id
INNER JOIN
     shipment_method sh_me
ON sh_me.Shipment_method_id = sh.Shipment_method_id
INNER JOIN
     company com
ON com.Company_id = sh_me.Company_id
where Company_name='XPress';

  CREATE OR REPLACE view Bit_Total_Pay as 
SELECT 
		sum(Total_price) as Total_bit_pament,o.Order_date
FROM
    book_store.orders o
    INNER JOIN
     book_order bo 
ON o.Order_id = bo.Order_id
INNER JOIN
     books ba 
ON ba.Book_id = bo.Book_id
where Payment_type='Bit';

CREATE OR REPLACE view Avg_order_last_year as 
SELECT 
		o.Order_id, Customer_ID, Order_date, LastModify_date, Employee_id, Payment_type, Total_price, Order_status, Book_order_id, Book_id, Quantity, Shipment_id, Sell_price,sum(Sell_price)
FROM
    book_store.orders o
    INNER JOIN
     book_order bo 
ON o.Order_id = bo.Order_id
where
o.Order_date >= DATE_SUB(NOW(),INTERVAL 1 YEAR) and o.Order_date < CURDATE()
group by o.Order_id;

 CREATE OR REPLACE view orders_last_year as 
SELECT 
		o.Order_id, Order_date, Payment_type, Total_price, Order_status,sum(Sell_price)
FROM
    book_store.orders o
    INNER JOIN
     book_order bo 
ON o.Order_id = bo.Order_id
where
o.Order_date >= DATE_SUB(NOW(),INTERVAL 1 YEAR) and o.Order_date < CURDATE()
group by o.Order_id;

CREATE OR REPLACE view Ship_company_sum_last12 as 
SELECT 
		Company_name,count(com.Company_id) as Total_shipping_cost
FROM
    book_store.orders o
    INNER JOIN
     book_order bo 
ON o.Order_id = bo.Order_id
INNER JOIN
     books ba 
ON ba.Book_id = bo.Book_id
INNER JOIN
     shipments sh 
ON bo.Shipment_id = sh.Shipment_id
INNER JOIN
     shipment_method sh_me
ON sh_me.Shipment_method_id = sh.Shipment_method_id
INNER JOIN
     company com
ON com.Company_id = sh_me.Company_id
GROUP BY Company_name;

CREATE OR REPLACE view Shipping_list as 
SELECT 
		Shipment_id
FROM
    book_store.book_order bo
INNER JOIN
     books ba 
ON ba.Book_id = bo.Book_id
group by Shipment_id;

CREATE OR REPLACE view Two_Publisher_ship_details as 
SELECT 
		bo.Shipment_id,Book_name,Publisher_id,count(Publisher_id) as Publisher_num,Method_type,Company_name
FROM
    book_store.book_order bo
INNER JOIN
     books ba 
ON ba.Book_id = bo.Book_id
INNER JOIN
     shipments sh 
ON bo.Shipment_id = sh.Shipment_id
INNER JOIN
     shipment_method sh_me
ON sh_me.Shipment_method_id = sh.Shipment_method_id
INNER JOIN
     company com
ON com.Company_id = sh_me.Company_id
group by Book_name
HAVING Publisher_num > 1;

CREATE OR REPLACE view Customer_list_bougth_after as
SELECT 
		o.Customer_ID
FROM
    book_store.orders o
INNER JOIN
     customers c 
ON c.Customer_ID = o.Customer_ID
where
o.Order_date >= DATE_SUB(NOW(),INTERVAL 2 YEAR)
group by o.Customer_ID;

CREATE OR REPLACE view Customer_list_bougth_before as
SELECT 
		o.Customer_ID,First_name,Last_name,Phone_num
FROM
    book_store.orders o
INNER JOIN
     customers c 
ON c.Customer_ID = o.Customer_ID
INNER JOIN
     phone p 
ON c.Customer_phone = p.Phone_id
where
o.Order_date <= DATE_SUB(NOW(),INTERVAL 2 YEAR)
group by o.Customer_ID;

CREATE OR REPLACE view Customer_list_not_bought24 as
SELECT * FROM Customer_list_bougth_before a
WHERE NOT EXISTS (
SELECT 1 
    FROM Customer_list_bougth_after b 
    WHERE b.Customer_ID = a.Customer_ID);
    
CREATE OR REPLACE view Customer_list_not_Arrive as
SELECT 
		Order_id, Order_date, LastModify_date, Order_status , First_name, Last_name, Phone_num
FROM
    book_store.orders o
INNER JOIN
     customers c 
ON c.Customer_ID = o.Customer_ID
INNER JOIN
     phone p 
ON c.Customer_phone = p.Phone_id
where
Order_status=3 and LastModify_date <= DATE_SUB(NOW(),INTERVAL 2 week);

CREATE OR REPLACE view Profit_Month_Year_last as
SELECT 
    YEAR(Order_date),month(Order_date)
FROM
    book_store.orders
    where Order_date >= DATE_SUB(NOW(),INTERVAL 1 YEAR) and Order_date < CURDATE()
    group by YEAR(Order_date),month(Order_date);
    
    CREATE OR REPLACE view Best_Employee as
     SELECT 
    Employee_id,First_name,Last_name,count(Employee_id) as Order_num,o.Order_date,o.Order_id
FROM
    book_store.orders o
    INNER JOIN
     customers c 
ON c.Customer_ID = o.Customer_ID
    group by YEAR(o.Order_date),month(o.Order_date),Employee_id
    order by Order_num DESC
    limit 1;