 E-Commerce SQL Project

##  Overview

This project demonstrates a basic **E-Commerce database system** built using SQL.

It covers essential database operations such as:

* Table creation
* Data insertion
* Data updating and deletion
* Filtering and aggregation
* Relationships using foreign keys

---

## Database Structure

1. Customers

* customer_id (Primary Key)
* name
* email
* address

---

 2. Orders

* order_id (Primary Key)
* customer_id (Foreign Key)
* order_date
* total_amount

---

 3. Products

* product_id (Primary Key)
* product_name
* price
* stock

---

 4. Order_Detail

* orderDetail_id (Primary Key)
* order_id (Foreign Key)
* product_id (Foreign Key)
* quantity
* sub_total

---

##  Relationships

* One **Customer → Many Orders**
* One **Order → Many Products** (via Order_Detail)
* One **Product → Many Order_Detail**

---

## Key SQL Operations

###  Data Manipulation

* INSERT → Add records
* UPDATE → Modify data
* DELETE → Remove records

---

###  Filtering & Conditions

```sql id="yq6c2x"
SELECT * FROM Orders
WHERE Order_date BETWEEN '2024-04-01' AND '2024-04-30';
```

---

###  Aggregation Functions

```sql id="1h6q8w"
SELECT 
    MAX(Total_Amount) AS Highest_order,
    MIN(Total_Amount) AS Lowest_order,
    AVG(Total_Amount) AS Avg_order
FROM Orders;
```

---

###  Subqueries

```sql id="9o2wfp"
SELECT * FROM Products
WHERE price = (SELECT MAX(price) FROM Products)
   OR price = (SELECT MIN(price) FROM Products);
```

---

### Group By & Analysis

```sql id="n3g8xr"
SELECT Product_id, SUM(Quantity) AS total_orders
FROM Order_Detail
GROUP BY Product_id
ORDER BY total_orders DESC
LIMIT 3;
```

---

 🔹 Total Revenue

```sql id="u8z2jm"
SELECT SUM(Sub_Total) AS Total_revenue
FROM Order_Detail;
```

---

## kills Demonstrated

* Database design and normalization
* Use of primary and foreign keys
* Writing CRUD operations
* Data filtering and sorting
* Aggregation and analysis
* Subqueries and grouping

---

##Project Level

Beginner to Intermediate SQL Project

---


Dix
(SQL Learner 🚀)
