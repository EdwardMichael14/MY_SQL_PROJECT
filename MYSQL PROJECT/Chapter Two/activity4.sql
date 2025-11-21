use mdc_ch02;
-- (a) 
select *
from customer, invoice, invoice_item;

-- (b)
select LastName, FirstName, Phone
from customer;

-- (c)
select LastName, FirstName, Phone
from customer where FirstName like 'Nikki%';

-- (d)
select LastName, FirstName, Phone, DateIn, DateOut
from customer join invoice
where TotalAmount > '$100.00'; 

-- (e)
select LastName, FirstName, Phone
from customer
where FirstName like 'B%';

-- (f)
select LastName, FirstName, Phone
from customer where LastName like '%cat%';

-- (g)
select LastName, FirstName, Phone
from customer
where Phone like '_23%';

-- (h)
select max(TotalAmount),  min(TotalAmount)
from invoice;

-- (i)
select avg(TotalAmount)
from invoice; 

-- (j)
select count(CustomerID)
from customer; 

-- (k)
select LastName, FirstName
from customer
group by LastName, FirstName;

-- (L)

-- select  

-- (M)
select LastName, FirstName, Phone
from customer
where (select 

