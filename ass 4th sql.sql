use company;
create table Sales(
saleid int primary key auto_increment,
productid int,
customerid int,
saledate date,
quantity int,
unitprice int,
region varchar(20));
drop table Sales;
insert into Sales(productid,customerid,saledate,quantity,unitprice,region)
values(101,1001,"2024-01-05",5,200,"North"),
      (102,1002,"2024-01-10",10,150,"East"),
      (103,1003,"2024-02-15",2,300,"North"),
      (104,1004,"2024-02-20",7,250,"West"),
      (101,1005,"2024-03-05",1,200,"East");

# Q1- Query to calculate the total sales (Quantity * UnitPrice) for each product.
Select ProductId, Sum(Quantity*UnitPrice) As 'Total Sales' from sales
group by ProductId;

# Q2- Query to find the total number of products sold in each region.
Select Religion,Sum(Quantity) AS 'Product Sold' from sales
group by Religion;

# Q3- Query to get the average sales amount per product.
Select ProductID,avg(Quantity*UnitPrice) AS "Average Sales Amount" from sales
group by ProductID;

# Q4- Regions where total sales are more than 3000.
Select Religion, sum(Quantity*UnitPrice) AS "Total Sales" from sales
group by Religion
having sum(Quantity*UnitPrice)>3000;

# Q5-  Query to get the maximum quantity sold for each product. 
Select ProductID,Max(Quantity) AS "MAX. Quantity Sold" from sales
group by ProductID;

# Q6- Query to calculate the average quantity of products sold per region. 
Select Religion,avg(Quantity)from sales
group by Religion;

# Q7- Find the product IDs that have generated a total sales amount of more than 1000. 
Select ProductID, sum(Quantity*UnitPrice) As "Total Sales" from sales
Group by ProductID
having sum(Quantity*UnitPrice)>1000;

# Q8- Query to get the total number of sales (rows) made for each customer. 
Select CustomerId, sum(Quantity*UnitPrice) As "Total Sales" from sales
group by CustomerID;

# Q9- Find the products for which the average quantity sold is less than 5. 
Select ProductID, avg(Quantity) AS "Quantity Sold" from sales
group by ProductID
having  avg(Quantity)<5;

# Q10- Query to find the sum of total sales for each customer in each region.
Select CustomerID, sum(Quantity*UnitPrice) AS "Total Sales" from sales
group by CustomerID;

# Q11- Query to calculate the total sales for each month.
Select SaleDate, sum(Quantity*UnitPrice) AS "Total Sales" from sales
group by SaleDate;

# Q12- Find the regions where the average unit price is more than 200.
Select Religion,avg(UnitPrice) from sales
group by Religion
having avg(UnitPrice)>200;

# Q13- Query to get the minimum and maximum quantity sold per region.
select Religion, Max(Quantity) AS "Max. Quantity Sold",Min(Quantity) AS "Min. Quantity Sold" from sales
group by Religion;

# Q14- Find the customers who have made more than 2 purchases. 
Select CustomerID, Quantity AS Purchase from sales where Quantity > 2;

# Q15- Query to find the total sales for each product and filter only those products where the total sales exceed 1500.  
Select ProductID, sum(Quantity*UnitPrice) As "Total Sales" from sales 
group by ProductID
having sum(Quantity*UnitPrice)>1500;