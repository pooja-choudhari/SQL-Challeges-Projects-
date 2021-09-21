/*  SQL exercises, Retrieve data from the table */

table : salesman
salesman_id |    name    |   city   | commission
-------------+------------+----------+------------
       5001 | James Hoog | New York |       0.15
       5002 | Nail Knite | Paris    |       0.13
       5005 | Pit Alex   | London   |       0.11
       5006 | Mc Lyon    | Paris    |       0.14
       5007 | Paul Adam  | Rome     |       0.13
       5003 | Lauson Hen | San Jose |       0.12

table: orders
ord_no      purch_amt   ord_date    customer_id  salesman_id
----------  ----------  ----------  -----------  -----------
70001       150.5       2012-10-05  3005         5002
70009       270.65      2012-09-10  3001         5005
70002       65.26       2012-10-05  3002         5001
70004       110.5       2012-08-17  3009         5003
70007       948.5       2012-09-10  3005         5002
70005       2400.6      2012-07-27  3007         5001
70008       5760        2012-09-10  3002         5001
70010       1983.43     2012-10-10  3004         5006
70003       2480.4      2012-10-10  3009         5003
70012       250.45      2012-06-27  3008         5002
70011       75.29       2012-08-17  3003         5007
70013       3045.6      2012-04-25  3002         5001


1. Write a SQL statement to display all the information of all salesmen.
SELECT *
FROM salesman;

2. Write a SQL statement to display specific columns like name and commission for all the salesmen.
SELECT name, commission
FROM salesman;

3. Write a query to display the columns in a specific order like order date, salesman id, order number and purchase amount from for all the orders.
SELECT ord_date, salesman_id, ord_no, purch_amt
FROM orders;

4.From the following table, write a SQL query to find the unique salespeople ID. Return salesman_id.
SELECT DISTINCT salesman_id
FROM salesman;
