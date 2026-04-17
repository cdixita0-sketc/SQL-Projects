E-Commerce Database SQL Project

Overview

This project demonstrates a basic E-commerce database built using SQL.
It covers essential SQL concepts like:

* Database creation
* Table relationships (Foreign Keys)
* Data insertion
* Data updates & deletion
* Filtering & sorting
* Aggregate functions
* Subqueries
* Grouping & analysis

---

Database Structure

 1. Customers Table

Stores customer information.

Columns:

* Customer_id (Primary Key)
* Name (Not Null)
* Email (Unique)
* Address

---

2. Orders Table

Stores order details placed by customers.

Columns:

* Order_id (Primary Key)
* Customer_id (Foreign Key)
* Order_date
* Total_Amount

Relationship:

* Each order belongs to one customer.

---

 3. Products Table

Stores product details.

Columns:

* Product_id (Primary Key)
* Product_Name
* Price
* Stock

---

4. Order_Detail Table

Stores product-level details for each order.

Columns:

* OrderDetail_id (Primary Key)
* Order_id (Foreign Key)
* Product_id (Foreign Key)
* Quantity
* Sub_Total

Relationship:

* Connects Orders and Products (Many-to-Many)

---

Key Operations Performed

 Data Insertion

* Added sample customers, orders, and products.

 Data Update

* Updated customer address
* Increased order amounts by 5%
* Updated product price

Data Deletion

* Deleted a customer and an order using ID

---

 Queries & Analysis

Filtering Data

* Find orders by Customer ID
* Search customers by name
* Filter products within price range

Sorting

* Products sorted by price (highest to lowest)

Aggregate Functions

* Highest order amount
* Lowest order amount
* Average order amount
* Total revenue calculation

Group By

* Top 3 most ordered products

Subqueries

* Find highest and lowest priced products

---

Sample Insights

* Total revenue generated from orders
* Most ordered products based on quantity
* Highest and lowest value orders
* Customer purchase behavior

---

Concepts Covered

* DDL (CREATE, ALTER)
* DML (INSERT, UPDATE, DELETE)
* DQL (SELECT)
* Constraints (PRIMARY KEY, FOREIGN KEY, UNIQUE)
* Aggregate Functions (SUM, AVG, MAX, MIN)
* GROUP BY & ORDER BY
* Subqueries

---

Learning Outcome

This project helps in understanding:

* Real-world database design
* Table relationships
* Writing clean and optimized SQL queries
* Performing data analysis using SQL

---

Future Improvements

* Add payment table
* Add user authentication system
* Track order status (Pending, Delivered, Cancelled)
* Add timestamps for better tracking

---



Beginner Data Science Student practicing SQL fundamentals.
