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

table: customer
customer_id |   cust_name    |    city    | grade | salesman_id
-------------+----------------+------------+-------+-------------
        3002 | Nick Rimando   | New York   |   100 |        5001
        3007 | Brad Davis     | New York   |   200 |        5001
        3005 | Graham Zusi    | California |   200 |        5002
        3008 | Julian Green   | London     |   300 |        5002
        3004 | Fabian Johnson | Paris      |   300 |        5006
        3009 | Geoff Cameron  | Berlin     |   100 |        5003
        3003 | Jozy Altidor   | Moscow     |   200 |        5007
        3001 | Brad Guzan     | London     |       |        5005

table: nobel_win
YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
---- ------------------------- --------------------------------------------- ------------------------- ------------
1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
1970 Physics                   Louis Neel                                    France                 Scientist
1970 Chemistry                 Luis Federico Leloir                          France                 Scientist
1970 Physiology                Ulf von Euler                                 Sweden                 Scientist
1970 Physiology                Bernard Katz                                  Germany                Scientist
1970 Literature                Aleksandr Solzhenitsyn                        Russia                 Linguist
1970 Economics                 Paul Samuelson                                USA                    Economist
1970 Physiology                Julius Axelrod                                USA                    Scientist
1971 Physics                   Dennis Gabor                                  Hungary                Scientist
1971 Chemistry                 Gerhard Herzberg                              Germany                Scientist
1971 Peace                     Willy Brandt                                  Germany                Chancellor
1971 Literature                Pablo Neruda                                  Chile                  Linguist
1971 Economics                 Simon Kuznets                                 Russia                 Economist
1978 Peace                     Anwar al-Sadat                                Egypt                  President
1978 Peace                     Menachem Begin                                Israel                 Prime Minister
1987 Chemistry                 Donald J. Cram                                USA                    Scientist
1987 Chemistry                 Jean-Marie Lehn                               France                 Scientist
1987 Physiology                Susumu Tonegawa                               Japan                  Scientist
1994 Economics                 Reinhard Selten                               Germany                Economist
1994 Peace                     Yitzhak Rabin                                 Israel                 Prime Minister
1987 Physics                   Johannes Georg Bednorz                        Germany                Scientist
1987 Literature                Joseph Brodsky                                Russia                 Linguist
1987 Economics                 Robert Solow                                  USA                    Economist
1994 Literature                Kenzaburo Oe                                  Japan                  Linguist

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

5. From the following table, write a SQL query to find the salespeople who lives in the City of 'Paris'. Return salesperson's name, city.
SELECT name, city
FROM salesman
WHERE city = "Paris";

6. From the following table, write a SQL query to find those customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id.
SELECT *
FROM customer
WHERE grade = 200;

7.From the following table, write a SQL query to find the orders, which are delivered by a salesperson of ID. 5001. Return ord_no, ord_date, purch_amt.
SELECT ord_no, ord_date, purch_amt
FROM orders
WHERE salesman_id = 5001;

8.From the following table, write a SQL query to find the Nobel Prize winner(s) in the year 1970. Return year, subject and winner.
SELECT YEAR, SUBJECT, WINNER
FROM nobel_win
WHERE YEAR = 1970;

9.From the following table, write a SQL query to find the Nobel Prize winner in 'Literature' in the year 1970. Return winner.
SELECT  WINNER
FROM nobel_win
WHERE SUBJECT ='Literature' AND YEAR = 1970;

10. From the following table, write a SQL query to find the Nobel Prize winner 'Dennis Gabor'. Return year, subject.
SELECT YEAR, SUBJECT
FROM nobel_win
WHERE WINNER = 'Dennis Gabor';

11.From the following table, write a SQL query to find the Nobel Prize winners in 'Physics' since the year 1950. Return winner.
SELECT WINNER
FROM nobel_win
WHERE SUBJECT = 'Physics' AND YEAR >= 1950;

12. From the following table, write a SQL query to find the Nobel Prize winners in 'Chemistry' between the years 1965 to 1975. Begin and end values are included. Return year, subject, winner, and country
SELECT year, subject, winner, country
  FROM nobel_win
 WHERE subject = 'Chemistry'
   AND year>=1965 AND year<=1975;

13. Write a SQL query to show all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin.
SELECT *
FROM nobel_win
WHERE year >= 1972 AND WINNER IN ('Menachem Begin', 'Yitzhak Rabin');

14. From the following table, write a SQL query to find the details of the winners whose first name matches with the string 'Louis'. Return year, subject, winner, country, and category.
SELECT *
FROM nobel_win
WHERE WINNER LIKE 'Louis%';

15. From the following table, write a SQL query to combine the winners in Physics, 1970 and in Economics, 1971. Return year, subject, winner, country, and category.
SELECT *
FROM nobel_win
WHERE SUBJECT = 'Physics' AND YEAR = 1970
UNION (SELECT *
       FROM nobel_win
      WHERE SUBJECT = 'Economics' AND YEAR = 1971  );

16. From the following table, write a SQL query to find the Nobel Prize winners in 1970 excluding the subjects Physiology and Economics. Return year, subject, winner, country, and category.
SELECT *
FROM nobel_win
WHERE SUBJECT NOT IN ('Physiology', 'Economics' );

17.From the following table, write a SQL query to find the details of the Nobel Prize winner 'Johannes Georg Bednorz'. Return year, subject, winner, country, and category.
SELECT *
FROM nobel_win
WHERE WINNER = 'Johannes Georg Bednorz';

18. From the following table, write a SQL query to find the Nobel Prize winners for the subject not started with the letter 'P'. Return year, subject, winner, country, and category. Order the result by year, descending.
SELECT *
FROM nobel_win
WHERE WINNER NOT LIKE 'P%'
ORDER BY WINNER;

19.From the following table, write a SQL query to find the details of 1970 Nobel Prize winners. Order the result by subject, ascending except ???Chemistry??? and ???Economics??? which will come at the end of result set. Return year, subject, winner, country, and category.
SELECT *
FROM nobel_win
WHERE YEAR = 1970
ORDER BY SUBJECT ASC;
