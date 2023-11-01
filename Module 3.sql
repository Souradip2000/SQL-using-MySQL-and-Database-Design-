INNER JOIN :


Payments table contains customerID, chequeNumber, paymentDate, paymentAmount.
Customer name is stored in customer table.

-- I want to extract the customer name and show it along with the payments table.

SELECT *
FROM payments
INNER JOIN customers
        ON payments.customerID = customers.customerID;

-- Here a lot of columns will be shown. The customerID column will be displayed twice, once from Payments table and another time from Customers table.


SELECT payments.customerID,
       customerName,
       amount,
       paymentDate
FROM payments
INNER JOIN customers
        ON payments.customerID = customers.customerID;

-- Here if we don't specify we want customerID from which table, it will give an error.

-- Also, we can give an alias to table names to make the code more concise.

SELECT p.customerID,
       customerName,
       amount,
       paymentDate
FROM payments p
INNER JOIN customers c
        ON p.customerID = c.customerID;

-- We will just need to write the alias after the table name.




___________________________________________________________________________________________________________________________________________________________



JOINING MULTIPLE TABLES :


-- Orders table will have customerID, using which we can join the Customers table to retrieve the name of the customer who has placed the particular order.

SELECT * 
FROM orders o
JOIN customers c
  ON c.customerID = o.customerID;

SELECT orderNumber,
       status,
       o.customerID,
       c.customerName,
    -- c.salesRepEmployeeNumber,
       e.firstName AS "Sales Person Name",
       e.jobTitle
FROM orders o
JOIN customers c
  ON c.customerID = o.customerID
JOIN employees e
  ON c.salesRepEmployeeNumber = e.employeeNumber;


-- A sales person will have multiple customers and each customer will have multiple orders.
-- one-to-many, one-to-many



___________________________________________________________________________________________________________________________________________________________



SELF JOIN


-- In the employees table






















