--1. Write a query to return all category names with their descriptions from the Categories table.

			--select [CategoryName], [description]
			--from [dbo].[Categories]

--2. Write a query to return the contact name, customer id, company name and city name of all Customers in London

		--select [ContactName],[CustomerID],[CompanyName],[City]
		--from [dbo].[Customers]
		--where[City]='London'

--3. Write a query to return all available columns in the Suppliers tables for the marketing managers and sales representatives that have a FAX number

		--select *
		--from[dbo].[Suppliers] 
		--where([ContactTitle]='Marketing Manager' or [ContactTitle]='Sales Representative') and [fax] is not NULL


--4. Write a query to return a list of customer id's from the Orders table with required dates between Jan 1, 1997 and Dec 31, 1997 and with freight under 100 units.

		--select [CustomerID]
		--from [dbo].[Orders]
		--where[Freight] <100 and [OrderDate]between '1997-01-01' and '1997-12-31'
		

--5. Write a query to return a list of company names and contact names of all customers from Mexico, Sweden and Germany.

		--select [CompanyName],[ContactName]
		--from [dbo].[Customers]
		--where [Country]='Mexico' or[Country] ='Sweden' or [Country]='Germany'

--6. Write a query to return a count of the number of discontinued products in the Products table.

		--select COUNT([Discontinued])AS'Discontinued Products'
		--from [dbo].[Products]
		--where [Discontinued]=0

--7. Write a query to return a list of category names and descriptions of all categories beginning with 'Co' from the Categories table.

		--select[CategoryName],[Description]
		--from[dbo].[Categories]
		--where[CategoryName] like 'Co%'

--8. Write a query to return all the company names, city, country and postal code from the Suppliers table
-- with the word 'rue' in their address. The list should ordered alphabetically by company name.
		
		--select[CompanyName],[City],[Country],[PostalCode]
		--from [dbo].[Suppliers]
		--where[Address] like '%rue%'
		--order by [CompanyName]

--9. Write a query to return the product id and the quantity ordered for each product labelled as 
--	'Quantity Purchased' in the Order Details table ordered by the Quantity Purchased in descending order.

		--select [ProductID], ([Quantity]) as 'Quantity Purchased'
		--from[dbo].[Order Details]
		--order by[Quantity] DESC

--10. Write a query to return the company name, address, city, postal code and country of all customers 
--    with orders that shipped using Speedy Express, along with the date that the order was made.

		--select c.CompanyName, [Address],[City],[PostalCode],[Country]
		--from [dbo].[Customers] c
		--join [dbo].[Orders] o
		--on c.CustomerID = o.CustomerID
		--join [dbo].[Shippers] s
		--on o.ShipVia = s.ShipperID
		--where s.CompanyName = 'Speedy Express'


--11. Write a query to return a list of Suppliers containing company name, contact name, contact title and region description.

		--select[CompanyName], [ContactName],[ContactTitle],[Region]
		--from[dbo].[Suppliers]

--12. Write a query to return all product names from the Products table that are condiments.

		--select p.ProductName --,[CategoryName]
		--from[dbo].[Products] p
		--join [dbo].[Categories] c
		--on p.CategoryID = c.CategoryID
		--where p.CategoryID = 2 -- Id:2 = 'Condiments'
		

--13. Write a query to return a list of customer names who have no orders in the Orders table.
		
		
		--select [CompanyName]
		--from [dbo].[Customers]
	
		

--14. Write a query to add a shipper named 'Amazon' to the Shippers table using SQL.

		--insert into Shippers (CompanyName)
		--values ('Amazon')


--15. Write a query to change the company name from 'Amazon' to 'Amazon Prime Shipping' in the Shippers table using SQL.
		
		--Update [dbo].[Shippers]
		--set [CompanyName] = 'Amazon Prime Shipping'
		--where [CompanyName] = 'Amazon'

--16. Write a query to return a complete list of company names from the Shippers table. 
--    Include freight totals rounded to the nearest whole number for each shipper 
--    from the Orders table for those shippers with orders.

		--select[CompanyName]
		--from [dbo].[Shippers]
		--join [dbo].[Orders]
		--on[ShipperID]=[ShipVia]
		--group by [CompanyName]

--17. Write a query to return all employee first and last names 
--    from the Employees table by combining the 2 columns aliased as 'DisplayName'. 
--    The combined format should be 'LastName, FirstName'.

	--select e.LastName + ', ' + e.FirstName AS 'DisplayName'
	--from [dbo].[Employees] e

--18. Write a query to add yourself to the Customers table with an order for 'Grandma's Boysenberry Spread'.
--select [dbo].[Customers]

--select *
--from [dbo].[Customers] c
--insert into 

--19. Write a query to remove yourself and your order from the database.


--20. Write a query to return a list of products from the Products table along with the total units in stock for each product. Include only products with TotalUnits greater than 100.