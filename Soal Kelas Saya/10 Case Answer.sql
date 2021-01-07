
-- 10 case answer
USE ProjectDB

--1 

SELECT 
	c.Name,
	c.Phone
FROM
	Customer AS c
	JOIN
	Sales AS s
		ON c.Customer_id = S.Customer_id
	JOIN
	Salesdetail AS sd
		ON sd.Sales_id = s.Sales_id
WHERE
	DATEPART(YEAR, CONVERT(DATETIME,s.Date)) = 2019
	AND
	sd.SandwichQty > 3


--2
SELECT
	st.Name,
	[Transaction Count] = COUNT(Sales_id)

FROM
	Sales AS s
	JOIN
	Staff as St
		ON s.Staff_id = st.Staff_id
	JOIN 
	Customer as c
		ON s.Customer_id = c.Customer_id
WHERE 
	LEFT(c.Name,1) LIKE 'T'
	AND
	DATEPART(MONTH, c.[Date of Birth]) > 9
GROUP BY
	st.Name

--3
SELECT
	[Chef Name] = LOWER(c.Name),
	[Average Sandwich Per Transaction] = CAST(AVG(sd.SandwichQty) AS NUMERIC(4,2) )
FROM
	Chef AS c
	JOIN
	Sales AS s
		ON c.Chef_id = s.Chef_id
	JOIN
	Salesdetail AS sd
		ON s.Sales_id = sd.Sales_id
WHERE
	c.Experience != 'Beginner'
	AND
	3 <(SELECT 
			 [Quantity] = SUM(SandwichQty)
		FROM
			Chef AS c1
			JOIN
			Sales AS s1
				ON c1.Chef_id = s1.Chef_id
			JOIN
			Salesdetail AS sd1
				ON s1.Sales_id = sd1.Sales_id
		WHERE
			c.Name = c1.Name
		)
GROUP BY
	c.Name

--4
SELECT
	[Vendor Code] = RIGHT(v.Vendor_id,3),
	[Vendor Name] = REPLACE(v.Name,'Company','Co.'),
	[Minimum Item Price] = MIN(i.Price),
	[Maximum Item Price] = MAX(i.Price)
	

FROM
	Purchasedetail as pd
	JOIN
	Vendor as v
		ON pd.Vendor_id = v.Vendor_id
	JOIN
	Ingredient as i
		ON pd.Ingredient_id = i.Ingredient_id
WHERE
	RIGHT(v.Email,10) = '@gmail.com'
	AND
	v.Name LIKE '% % %'

GROUP BY
	v.Vendor_id, v.Name


--5

SELECT
	[Nickname] = LEFT(st.Name, 1) + RIGHT(st.Name, 1),
	st.Salary
FROM
	Staff AS st
	JOIN
	Sales AS sa
		ON st.Staff_id = sa.Staff_id
	JOIN
	Customer AS c
		ON sa.Customer_id = c.Customer_id
WHERE
	c.Gender LIKE 'FEMALE'
	AND
	st.Salary > (SELECT
					[AVG] = AVG(Salary)
					FROM
					Staff)

--6
SELECT

[Customer Name] = c.Name,
[Customer Age] = DATEPART(YEAR,GETDATE()) - DATEPART(YEAR,c.[Date of Birth]),
[Sandwich Name] = sa.Name,
[Quantity] = CAST(sd.SandwichQty as VARCHAR) + 'Piece(s)'

FROM
Customer as c
JOIN 
Sales as s
ON c.Customer_id = s.Customer_id
JOIN
Salesdetail as sd
ON s.Sales_id = sd.Sales_id
JOIN
Sandwich as sa
ON sa.Sandwich_id = sd.Sandwich_id

WHERE
	sd.SandwichQty < 5
	AND
	DATEPART(YEAR,GETDATE()) - DATEPART(YEAR,c.[Date of Birth]) > (
	SELECT
		[AVG] = AVG(DATEPART(YEAR,GETDATE()) - DATEPART(YEAR,[Date of Birth]))
	FROM
	Customer
	)


--7
SELECT
[Price] = sa.Price + b.MIN,
[Sandwich Name] = sa.Name

FROM 
Sales as s
JOIN
Salesdetail as sd
ON s.Sales_id = sd.Sales_id
JOIN
Sandwich as sa
ON sd.Sandwich_id = sa.Sandwich_id
JOIN
(SELECT
	Sandwich_id,
	[SUM] = SUM(SandwichQty)
	FROM
	Salesdetail
	GROUP BY
	Sandwich_id
	) a
ON sa.Sandwich_id = a.Sandwich_id
JOIN
(SELECT
	Sandwich_id,
	[MIN] = MIN(Price)
	FROM
	Sandwich
	GROUP BY	
	Sandwich_id)b
ON sa.Sandwich_id = b.Sandwich_id 
WHERE
	sa.Name LIKE '% %'
	AND
	a.[SUM] BETWEEN 5 AND 25
ORDER BY
[Sandwich Name]asc


--8
SELECT
[Staff Name] = Name,
[Staff Salary] = 'Rp. ' + CAST(CAST(Salary as numeric(20,0)) as varchar),
[Gender] = LEFT(Gender,1)
FROM
Staff as s,
(SELECT
	[AVG] = AVG(Salary)
	FROM
	Staff
	WHERE
		Staff.Gender LIKE 'MALE'
	)a,
(SELECT
	[MIN] = MIN(Salary)
	FROM
	Staff
	WHERE
		Staff.Gender LIKE 'MALE'
	)b
WHERE
	Salary BETWEEN b.MIN AND a.AVG


--9
CREATE VIEW [Staff Sales Statistic]
AS
SELECT
	StaffName = st.Name,
	SandwichName = sw.Name,
	[Sales Count] = COUNT(sa.Sales_id),
	[Sales Total] = SUM(sd.SandwichQTY) 
	--sum of sales quantity?
FROM
	Staff AS st
	JOIN
	Sales AS sa
		ON st.staff_id = sa.staff_id
	JOIN
	Salesdetail AS sd
		ON sa.sales_id = sd.sales_id
	JOIN
	Sandwich AS sw
		ON sd.sandwich_id = sw.sandwich_id
WHERE
	sw.Name LIKE '% %'
	AND
	1 < (	SELECT
			SalesQuantity = SUM(SandwichQTY)
		FROM
			Salesdetail)
GROUP BY
	st.Name, sw.Name

--10
CREATE VIEW [Vendor Statistic]
AS
SELECT
	VendorName = ve.Name,
	[Price Range] = a.[MAX_Price] - a.[MIN_Price],
	[Minimum Item Purchase] = b.[MIN_Qty],
	[Maximum Item Purchase] = b.[MAX_Qty]

FROM
	Vendor AS ve
	JOIN
	(SELECT
		pd.Vendor_id,
		[MAX_Price] = MAX(Price),
		[MIN_Price] = MIN(Price)
		FROM
		Ingredient as i
		JOIN
		Purchasedetail as pd
		ON
		i.Ingredient_id = pd.Ingredient_id
		JOIN
		Vendor as v
		ON
		pd.Vendor_id = v.vendor_id
		GROUP BY 
			pd.Vendor_id
			)a
	ON ve.Vendor_id = a.Vendor_id
	JOIN
	(SELECT
		pd.Vendor_id,
		[MAX_Qty] = MAX(Qty),
		[MIN_Qty] = MIN(Qty)
		FROM
		Purchasedetail as pd
		JOIN
		Vendor as v
		ON
		pd.Vendor_id = v.vendor_id
		GROUP BY 
			pd.Vendor_id
			)b
	ON ve.Vendor_id = b.Vendor_id
WHERE
	CHARINDEX('Gold', ve.Address) = 0
	AND
	a.[MAX_Price] - a.[MIN_Price] > 0
