-- Insert Data

USE ProjectDB


INSERT INTO Staff
VALUES
('ST001','Andi Setiawan','MALE',3500000,'081211118265'),
('ST002','Budi Setiawan','MALE',3250000,'081211110385'),
('ST003','Charlie Setiawan','MALE',3750000,'081211119385'),
('ST004','Doni Setiawan','MALE',3000000,'081211115624'),
('ST005', 'Dodi Setiawan', 'MALE', 4000000, '081211119200'),
('ST006', 'Erlangga Setiawan', 'MALE', 3750000, '081211119546'),
('ST007', 'Bulan Setiawan', 'FEMALE', 3500000, '081211117567'),
('ST008', 'Mawar Setiawan', 'FEMALE', 4000000, '081211111778'),
('ST009', 'Bunga Setiawan', 'FEMALE', 3750000, '081211111900'),
('ST010', 'Hotman Setiawan', 'MALE', 3500000, '081211110083')

INSERT INTO Chef
VALUES
('CH001','Charlie Setiawan','Beginner'),
('CH002','Thea Setiawan','Expert'),
('CH003','Liberty Setiawan','Advance'),
('CH004','Joseph Setiawan','Beginner'),
('CH005','Elmer Setiawan','Advance'),
('CH006','Jemima Setiawan','Beginner'),
('CH007','Isabella Setiawan','Expert'),
('CH008','Tobias Setiawan','Advance'),
('CH009','Lisa Setiawan','Beginner'),
('CH010','Otis Setiawan','Expert')

INSERT INTO Customer
VALUES
('CS001','Alice Setiabudi', 'FEMALE', '01/21/2001', '082119192020'),
('CS002','Sophie Setiabudi', 'FEMALE', '05/25/2002', '082119199191'),
('CS003','Andi Setiabudi', 'MALE', '08/01/2000', '082119196583'),
('CS004','Tony Setiabudi', 'MALE', '10/28/2001', '082119194575'),
('CS005','Tiona Setiabudi', 'FEMALE', '11/19/2000', '082119191739'),
('CS006','Lucia Setiabudi', 'FEMALE', '02/12/2001', '082119196734'),
('CS007','Chloe Setiabudi', 'FEMALE', '01/19/2002', '082119194621'),
('CS008','Kevin Setiabudi', 'MALE', '08/20/2000', '082119198453'),
('CS009','Alfie Setiabudi', 'MALE', '09/23/2001', '082119191865'),
('CS010','Travis Setiabudi', 'MALE', '10/21/2000', '082119191947'),
('CS011','Timoti Budi', 'MALE', '10/29/2001', '082119191947')

INSERT INTO Vendor
VALUES
('VE001', 'Budi Company', 'Jl. A no 23 Gold, Jakarta Timur', '081212751111', 'budi03@hotmail.com'),
('VE002', 'Sedia Selalu Company', 'Jl. E no 15 Silver, Jakarta Pusat', '081212758756', 'ernest123@gmail.com'),
('VE003', 'Sinar Harapan Company', 'Jl. O no 19 Silver, Jakarta Barat', '081212781435', 'dragon123@gmail.com'),
('VE004', 'Selalu Berharap Company', 'Jl. P no 22 Silver, Jakarta Selatan', '081212759472', 'HealthyEat123@yahoo.com'),
('VE005', 'Pencari Cuan Company', 'Jl. N no 29 Gold, Jakarta Barat', '081212757645', 'jacob0891@gmail.com'),
('VE006', 'Bersinar Terang Company', 'Jl. K no 12 Silver, Jakarta Utara', '081212758719', 'kelly13982@gmail.com'),
('VE007', 'Nyaris Bersinar Company', 'Jl. L no 16 Silver, Jakarta Barat', '081212757634', 'molly12938@rocketmail.com'),
('VE008', 'Bersinar Company', 'Jl. Q no 20 Silver, Jakarta Utara', '081212758602', 'Irene1832091@gmail.com'),
('VE009', 'Bersinar Banget Company', 'Jl. T no 27 Gold, Jakarta Selatan', '081212756571', 'yasmin21839@gmail.com'),
('VE010', 'Tidak Redup Company', 'Jl. B no 15 Gold, Jakarta Barat', '081212758749', 'nicole1893@yahoo.com')

INSERT INTO Ingredient
VALUES
('IG001', 'Flour', '2000'),
('IG002', 'Bread', '4000'),
('IG003', 'Ham', '8000'),
('IG004', 'Lettuce', '5000'),
('IG005', 'Bacon', '8000'),
('IG006', 'Mayonaise', '2000'),
('IG007', 'Ketchup', '1000'),
('IG008', 'Tomato', '3000'),
('IG009', 'Chicken', '9000'),
('IG010', 'Tuna', '10000')


INSERT INTO Sandwich
VALUES
('SW001','Tuna Sandwich','Barbeque',30000),
('SW002','Tuna Sandwich','Mushroom',27500),
('SW003','Tuna Sandwich','Mustard',25000),
('SW004','Bacon Sandwich','Barbeque',30000),
('SW005','Bacon Sandwich','Mushroom',27500),
('SW006','Bacon Sandwich','Mustard',25000),
('SW007','Chicken Sandwich','Barbeque',30000),
('SW008','Chicken Sandwich','Mushroom',27500),
('SW009','Chicken Sandwich','Mustard',25000),
('SW010','Ham Sandwich','Barbeque',30000)

INSERT INTO Purchase
VALUES
('PH001', 'ST001', '09/18/2019'),
('PH002', 'ST002', '10/19/2019'),
('PH003', 'ST003', '09/21/2019'),
('PH004', 'ST004', '06/15/2019'),
('PH005', 'ST005', '05/17/2019'),
('PH006', 'ST006', '06/21/2019'),
('PH007', 'ST007', '06/29/2019'),
('PH008', 'ST008', '07/30/2019'),
('PH009', 'ST009', '08/25/2019'),
('PH010', 'ST010', '10/12/2019'),
('PH011', 'ST001', '08/06/2019'),
('PH012', 'ST004', '06/16/2019'),
('PH013', 'ST006', '07/12/2019'),
('PH014', 'ST008', '07/11/2019'),
('PH015', 'ST010', '07/10/2019')


INSERT INTO Purchasedetail
VALUES
('PH015', 'IG001', 'VE001', 5),
('PH014', 'IG002', 'VE002', 8),
('PH013', 'IG003', 'VE003', 25),
('PH012', 'IG004', 'VE004', 65),
('PH011', 'IG005', 'VE005', 240),
('PH010', 'IG006', 'VE006', 1500),
('PH009', 'IG007', 'VE007', 20),
('PH008', 'IG008', 'VE008', 2800),
('PH007', 'IG009', 'VE009', 15),
('PH006', 'IG010', 'VE010', 1250),
('PH005', 'IG010', 'VE001', 30),
('PH004', 'IG009', 'VE002', 75),
('PH003', 'IG008', 'VE003', 325),
('PH002', 'IG007', 'VE004', 20),
('PH001', 'IG006', 'VE005', 750),
('PH001', 'IG005', 'VE006', 25),
('PH002', 'IG004', 'VE007', 800),
('PH003', 'IG003', 'VE008', 3000),
('PH004', 'IG002', 'VE009', 2500),
('PH005', 'IG001', 'VE010', 225),
('PH006', 'IG001', 'VE005', 1525),
('PH007', 'IG002', 'VE004', 400),
('PH008', 'IG003', 'VE002', 650),
('PH009', 'IG004', 'VE003', 1500),
('PH010', 'IG005', 'VE001', 675)


INSERT INTO Sales
VALUES
('SH001','ST001','CS002','CH005', '11/07/2019'),
('SH002','ST003','CS004','CH004', '10/14/2010'),
('SH003','ST005','CS006','CH003', '09/16/2019'),
('SH004','ST007','CS008','CH002', '01/17/2019'),
('SH005','ST009','CS010','CH001', '12/04/2018'),
('SH006','ST002','CS001','CH010', '07/07/2017'),
('SH007','ST004','CS003','CH008', '11/09/2019'),
('SH008','ST006','CS005','CH006', '09/13/2019'),
('SH009','ST008','CS007','CH004', '08/16/2016'),
('SH010','ST010','CS009','CH002', '06/05/2019'),
('SH011','ST001','CS005','CH001', '10/08/2015'),
('SH012','ST002','CS004','CH005', '03/17/2019'),
('SH013','ST003','CS003','CH003', '02/02/2019'),
('SH014','ST004','CS002','CH007', '12/06/2019'),
('SH015','ST005','CS001','CH009', '05/07/2012') 

INSERT INTO Salesdetail
VALUES
('SH001','SW001',5),
('SH002','SW002',10),
('SH003','SW002',1),
('SH004','SW003',4),
('SH005','SW004',6),
('SH006','SW005',7),
('SH007','SW005',7),
('SH008','SW005',7),
('SH009','SW005',3),
('SH010','SW006',3),
('SH011','SW006',3),
('SH012','SW006',3),
('SH013','SW007',1),
('SH014','SW007',1),
('SH015','SW008',1),
('SH001','SW008',1),
('SH002','SW008',2),
('SH003','SW008',3),
('SH004','SW009',3),
('SH005','SW009',4),
('SH006','SW009',5),
('SH007','SW009',6),
('SH008','SW010',6),
('SH009','SW010',1),
('SH010','SW010',1)

