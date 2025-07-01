-- use sql_intern

-- show tables
-- select * from orders
-- select * from sales
-- select * from employees

-- (SCALAR QUERIES):
-- select name,(select max(amount) from orders where 
-- orders.id = employees.id) as max_salary from employees
-- select * from customers

-- select name, phone, (select avg(amount) from orders where orders.id = customers.id) 
-- as average_sales from customers 
-- select * from library

-- select name, phone, (select sum(amount) from sales
--  where sales.id = customers.id) as sum_amount from customers

-- select * from employees
-- select name, designation, salary, (select max(amount) from sales
--  where sales.id = employees.id) as maximum_amount from employees

-- select * from customers
-- select name, phone, (select sum(salary) from employees 
-- where customers.id = employees.id) as sum_salary from customers

-- (IN):
-- select * from employees where id in
-- (select id from employees where designation = 'web developer')

-- select * from library where book_id in
-- (select book_id from library where author_id = 2)
-- select * from employees

-- select * from employees where gender in
-- (select gender from employees where salary = 35000)

-- select * from employees where designation in
-- (select designation from employees where salary = 45000) 

-- select * from employees where gender in('male')
-- select * from employees where age in(23)
-- select name, designation, salary from employees where name in('paaru')
-- select * from employees where not salary in(37000)
-- select * from employees
-- select * from orders

-- select * from orders where customer_id in
-- (select customer_id from orders where order_status = 'delivered')

-- select * from orders where order_date in
-- (select order_date from orders where customer_id = 104)
-- select * from employees where id in(4)

-- (EXISTS):
-- select * from employees where exists(select * from employees where salary = 35000)
-- select name, age, designation from employees where exists(select * from employees where id = 1)

-- select name from employees where exists(
-- select name from orders where orders.id = employees.id)

-- select * from employees where exists(
-- select * from orders where orders.id = employees.id)

-- show tables
-- select * from customers
-- select * from sales

-- select * from customers where exists(
-- select * from sales where customers.id = sales.id)

-- select name, phone from customers where exists(
-- select * from sales where sales.id = customers.id)

-- select * from employees where exists(select * from employees where id = 7)

-- select * from employees where exists(
-- select * from customers where id = 1)

