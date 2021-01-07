--  Simulate Transaction Processes
USE ProjectDB

-- SALES
INSERT INTO Sales
VALUES
('SH016','ST008','CS005','CH006', '10/05/2018')

INSERT INTO Salesdetail
VALUES
('SH016','SW005',10)

-- PURCHASE
INSERT INTO Purchase
VALUES
('PH016', 'ST008', '05/08/2018')

INSERT INTO Purchasedetail
VALUES
('PH016', 'IG008', 'VE001', 15)
