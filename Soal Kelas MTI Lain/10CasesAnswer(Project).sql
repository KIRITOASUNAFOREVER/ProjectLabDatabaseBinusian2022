USE RA_Laundry

-- soal e
--1.

SELECT mc.CustomerId,
		CustomerName,
		[TotalServiceTransaction] = SUM(ServicePrice)
FROM MsCustomer mc 
JOIN HeaderServiceTransaction hst
ON mc.CustomerId = hst.CustomerId
JOIN DetailServiceTransaction dst
ON hst.ServiceTransactionId = dst.ServiceTransactionId
WHERE DATENAME(MONTH,ServiceDate)= 'july' AND CustomerGender LIKE 'Male'
GROUP BY mc.CustomerId, CustomerName

--2.
SELECT ms.StaffName,
		pt.PurchaseDate,
		[TotalTransaction] = COUNT(pt.PurchaseTransactionId)
FROM MsStaff ms JOIN HeaderPurchaseTransaction pt
ON ms.StaffId = pt.StaffId
WHERE StaffName LIKE '%o%' 
GROUP BY ms.StaffName, pt.PurchaseDate
HAVING COUNT(pt.PurchaseTransactionId) > 1



--3. convert
SELECT mv.VendorName,
		[PurchaseDate] = CAST (MONTH(pt.PurchaseDate) AS VARCHAR)
							+' ' + CONVERT(VARCHAR, DAY(pt.PurchaseDate)) 
							+ ',' + CAST(YEAR(pt.PurchaseDate) AS VARCHAR),
		[TotalTransaction] = COUNT(pt.PurchaseTransactionId),
		[TotalPurchase] = SUM(dpt.Quantity* mm.MaterialPrice) 
FROM MsVendor mv JOIN HeaderPurchaseTransaction pt
ON mv.VendorId = pt.VendorId
JOIN DetailPurchaseTransaction dpt
ON pt.PurchaseTransactionId = dpt.PurchaseTransactionId
JOIN MsMaterial mm
ON dpt.MaterialId = mm.MaterialId
WHERE VendorName LIKE 'PT.%' AND DAY(pt.PurchaseDate) % 2 = 1
GROUP BY VendorName, PurchaseDate



--4.
SELECT ms.StaffName,
		mm.MaterialName ,
		[TotalTransaction] = COUNT(pt.PurchaseTransactionId),
		[TotalQuantity] = CONCAT(SUM(dpt.Quantity), ' Pcs')
FROM MsStaff ms JOIN HeaderPurchaseTransaction pt
ON ms.StaffId =  pt.StaffId
JOIN DetailPurchaseTransaction dpt
ON pt.PurchaseTransactionId = dpt.PurchaseTransactionId
JOIN MsMaterial mm
ON dpt.MaterialId = mm.MaterialId
WHERE DATENAME(MONTH, PurchaseDate) = 'July'
GROUP BY ms.StaffName, mm.MaterialName
HAVING SUM(dpt.Quantity) < 9


--5.
SELECT [MaterialId] = REPLACE(mm.MaterialId, 'MA', 'Material'),
		[MaterialName] = UPPER(MaterialName),
		pt.PurchaseDate,
		dpt.Quantity
FROM MsMaterial mm
JOIN DetailPurchaseTransaction dpt ON mm.MaterialId = dpt.MaterialId
JOIN HeaderPurchaseTransaction pt ON pt.PurchaseTransactionId = dpt.purchaseTransactionId,
(
	SELECT AVG(Quantity) AS [Qty]
	FROM DetailPurchaseTransaction
)x
WHERE  MaterialType LIKE 'Supplies' AND  dpt.Quantity > x.Qty
ORDER BY mm.MaterialId ASC




--6.
SELECT ms.StaffName,
		mc.CustomerName,
		[ServiceDate] = CAST (DAY(st.ServiceDate) AS VARCHAR)
							+' ' + CONVERT(VARCHAR, MONTH(st.ServiceDate)) 
							+ ' ' + CAST(YEAR(st.ServiceDate) AS VARCHAR)
FROM MsStaff ms 
JOIN HeaderServiceTransaction st ON ms.StaffID = st.StaffID
JOIN MsCustomer mc ON st.CustomerID = mc.CustomerID,
(
	SELECT Avg(DISTINCT staffsalary) AS [avg_salary]
	FROM MsStaff
)y
WHERE ms.StaffSalary > y.avg_salary AND CHARINDEX(' ', ms.StaffName)=0


--7.
SELECT mc.ClothesName,
		[TotalTransaction] = CONCAT(COUNT(st.ServiceTransactionId), ' transaction') ,
		[ServiceType] = SUBSTRING(dst.ServiceType, 1, CHARINDEX(' ', dst.ServiceType+' ')-1),
		dst.ServicePrice
FROM MsStaff ms JOIN HeaderServiceTransaction st
ON ms.StaffId = st.StaffId 
JOIN DetailServiceTransaction dst
ON st.ServiceTransactionId = dst.ServiceTransactionId
JOIN MsClothes mc
ON dst.ClothesId = mc.ClothesId,
(
	SELECT AVG(ServicePrice) AS [avg_Service]
	FROM DetailServiceTransaction
)z
WHERE dst.ServicePrice < z.avg_Service 
		AND mc.ClothesType LIKE 'Cotton'
GROUP BY  ClothesName, ServiceType, ServicePrice

--8.
SELECT [StaffFirstName] = SUBSTRING(ms.StaffName, 1, CHARINDEX(' ', ms.StaffName+' ')-1),
		mv.VendorName,
		[VendorPhoneNumber] = REPLACE(mv.VendorPhone, '08', '+628'),
		[TotalTransaction] = COUNT(pt.PurchaseTransactionId)
FROM MsStaff ms JOIN HeaderPurchaseTransaction pt
ON ms.StaffId = pt.StaffId
JOIN MsVendor mv
ON pt.VendorId = mv.VendorId
JOIN DetailPurchaseTransaction dpt
ON pt.PurchaseTransactionId = dpt.PurchaseTransactionId,
(
	SELECT AVG(Quantity) AS [avg_qty]
	FROM DetailPurchaseTransaction dst
)r
WHERE dpt.Quantity > r.avg_qty AND CHARINDEX(' ', ms.StaffName)!=0
GROUP BY ms.StaffName, mv.VendorName, mv.VendorPhone


--9.
CREATE VIEW ViewMaterialPurchase AS
SELECT mm.MaterialName,
		[MaterialPrice] = CONCAT('Rp.', mm.MaterialPrice),
		[TotalTransaction] = COUNT(pt.PurchaseTransactionId),
		[TotalPrice] = SUM(dpt.Quantity*mm.MaterialPrice)
FROM HeaderPurchaseTransaction pt JOIN DetailPurchaseTransaction dpt
ON pt.PurchaseTransactionId = dpt.PurchaseTransactionId
JOIN MsMaterial mm
ON dpt.MaterialId = mm.MaterialId
WHERE mm.MaterialType LIKE 'Supplies'
GROUP BY mm.MaterialName, mm.MaterialPrice


--10
CREATE VIEW ViewMaleCustomerTransaction AS
SELECT mc.CustomerName,
		mcs.ClothesName,
		[TotalTransaction] = COUNT(st.ServiceTransactionId),
		[TotalPrice] = SUM(dst.ServicePrice)
FROM MsCustomer mc JOIN HeaderServiceTransaction st
ON mc.CustomerId =  st.CustomerId
JOIN DetailServiceTransaction dst
ON st.ServiceTransactionId = dst.ServiceTransactionId
JOIN MsClothes mcs
ON dst.ClothesId = mcs.ClothesId
WHERE mc.CustomerGender LIKE 'Male' AND mcs.ClothesType IN('Wool', 'Linen')
GROUP BY mc.CustomerName, mcs.ClothesName

