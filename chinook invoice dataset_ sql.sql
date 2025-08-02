create database chinook;
use chinook;
select * from customer;
select * from Invoice;

-- Q1 show all the customers from the city 'paris'.

select firstName, LastName ,city from Customer
where City = 'Paris';

-- Q2 list all invoices where total > 10 .

select * from Invoice
where Total > 10;

-- Q3 Show all customers from USA.

select * from Customer
where Country = 'USA';

-- Q4 show customer from cities not in london or paris.

select * from Customer
where City not in ('london','paris');

-- Q5 list invoice where the total is not equal to 0.

select * from Invoice
where ABS(total) >= 1;

-- Q6 show all customers from USA whose first name is 'john'.

select * from Customer
where country = 'USA' and  FirstName = 'John';

--Q7 list customers whose first name start with 's'.

select * from Customer
where FirstName like'S%' ;

--Q8 Show invoices for customers who are from either brazil or USA.

select * from Customer
where Country in ('brazil' , 'USA');

-- Q9 show invoices with invoice date after 2013-01-01.

select * from Invoice
where InvoiceDate > '2013-01-01';

-- Q10 show invoices with totals between 10 and 50.

select * from Invoice
where Total between 10 and 50;

--Q11 list invoices made between '2012-01-01' and '2012-12-31'.

select * from Invoice
where InvoiceDate between '2012-01-01' and '2012-12-31'; 

-- Q12 show customer whose customer is between 5 and 10.

select * from invoice
where CustomerId between 5 and 10 ;

--Q13 List customers whose last name ends with 'son'.

select * from Customer
where LastName like '%son';

-- Q14 list customer whose email contains 'gmail'

select * from Customer
where Email like '%gmail%';

-- Q15 Show customer names with their invoice dates.

select C.FirstName ,C.LastName, I.InvoiceDate
from Customer AS C
join Invoice AS I
on C.CustomerId = I.CustomerId;


-- Q16 List invoice totals along with customer cities.

select c.city , sum(i.total) as total_invoice
from Customer as c
join Invoice as i
on  c.CustomerId = i.CustomerId
group by c.City;

-- Q17 show average invoice amount for each customer.

select c.FirstName , avg(i.total) as avg_total 
from customer as c
join invoice as i
on c.customerid = i.customerid
group by c.FirstName;

-- Q18 count how many invoices were created each month.

SELECT 
    DATENAME(MONTH, InvoiceDate) AS MonthName,
    MONTH(InvoiceDate) AS MonthNumber,
    COUNT(*) AS InvoiceCount
FROM 
    Invoice
GROUP BY 
   MONTH(InvoiceDate), DATENAME(MONTH, InvoiceDate)
ORDER BY 
    MonthNumber;

-- Q19 show counries where total revenue is more than 100.

select c.country , sum(i.total) as total_revenue
from Customer as c
join Invoice as i 
on c.CustomerId = i.CustomerId
group by c.Country
Having sum(i.total) > 100;

-- Q20 list cusommers who have more than 7 invoices.

select c.FirstName , count(i.total)
from Customer as c
join Invoice as i 
on c.CustomerId = i.CustomerId
group by c.FirstName
Having count(i.Total) > 7;

-- Q21 show cities with average invoice amount > 5

select c.City , avg(i.total)
from Customer as c
join Invoice as i 
on c.CustomerId = i.CustomerId
group by c.City
Having avg(i.Total) > 6;

-- Q22 show customers whose total spending is between 20 and 40.

SELECT CustomerId, SUM(Total) AS TotalSpending
FROM Invoice
GROUP BY  CustomerId
HAVING  SUM(Total) BETWEEN 20 AND 40
ORDER BY TotalSpending;




	




