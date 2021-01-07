USE RA_Laundry
---------------------------------------------------MASTER

--Insert MsStaff(10)
INSERT INTO MsStaff VALUES 
('ST001','Bill Gates', 'Jl.Kebon Semangka No.32 RT.005/RW.012', 'Male', '2700000'),
('ST002','Albert Einstain','Jl. Sandang No.10, RT.5/RW.10', 'Male','3000000'),
('ST003','Kartini','Jl. Raya Kb. Jeruk No.64 A, RT.4/RW.3', 'Female','2900000'),	
('ST004','Helen Keller', 'Jl. Sandang No. 2 5 10, RT.1/RW.11', 'Female','1200000'),
('ST005','Chopper','Jl. PALMERAH TENGAH (H TAFSIR) No.2, RT.2/RW.12','Male','1550000'),
('ST006','Nico Robin','Jl. Prominence 38D No.25 RT.003/RW.006','Female','3000000'), 
('ST007','Soekarno Hatta','Jl. Raya Ps. Kby. Lama No.5A, RT.1/RW.8','Male','3000000'),
('ST008','Luffy','Jl. Raya Kb. Jeruk No.27, RT.1/RW.9','Male','1920000'),
('ST009','Edison','Jl. Kyai H. Syahdan No.9, RT.6/RW.12','Male','2250000'),
('ST010','Stephen Hawking','Jl. Raya Kb. Jeruk No.27, RT.3/RW.6','Male','1500000'),
('ST011','Marie Curie','Jl. Mandala No.4, RT.1/RW.9','Female','2200000'),
('ST012','Naruto Uzumaki','Jl. Rawa Belong Raya No.9','Male','2300000'),
('ST013','Sun WuKong','Jl. U Raya Blk. U No.31, RT.9/RW.15','Male','1500000')
		
--Insert MsVendor(10)
INSERT INTO MsVendor VALUES
('VE001','CV.Loraine Warren','Jl. Rw. Belong No.56, RT.8/RW.15','081232144523'), 
('VE002','PT.Annabelle','jln komplek sandang No.30e RT.002/RW.011','0852666666'), 
('VE003','CV.Ed Warren','Jl. Rw. Belong No.56, RT.8/RW.15','081245623215'), 
('VE004','PT.Valak Ganteng','Jl. Neraka No.666','085636366633'), 
('VE005','PT.Penny Wise','Jl. DalamSelokan No.444','085655556666'), 
('VE006','CV.Josh Lambert','Jl. Kyai H. Syahdan No.18A, RT.2/RW.11','085332114542'), 
('VE007','CV.Elise Rainier','Ruko Melrose Palace, Jl. Rw. Belong No.56, RT.8/RW.15','081336677112'), 
('VE008','PT.Lucifer','Jl. AntaraSurgaNeraka No.666','08121666666'), 
('VE009','PT.Joker Pudding','Jl. Raya Kb. Jeruk No.27, RT.1/RW.9','085362232136'), 
('VE010','PT.Harley Quinn','Jl. Kyai H. Syahdan No.4, RT.7/RW.12','087780810188'), 
('VE011','CV.Enchantress Katana',' Jl. Raya Ps. Kby. Lama No.6, RT.3/RW.1','081211500220'), 
('VE012','PT.Iron Man','l. Letjen S. Parman No.28, RT.12/RW.6','081277885523'), 
('VE013','PT. Thanos Imut','Jl. DalamTanah No.88','081212232474')



--Insert Customer
INSERT INTO MsCustomer VALUES
('CU001','Barack Hussein Obama','Jl. Letjen S. Parman No.1, RT.6/RW.16','Male','4 August 1961'), 
('CU002','Joko Widodo','Jl. Medan Merdeka Utara No.3, RT.2/RW.3','Male', '21 June 1961'),
('CU003','Lady Gaga','Jl. Gatot Subroto No.Kav. 40-41, RT.8/RW.3','Female','28 March 1986'), 
('CU004','Beyoncé Knowles','Jl. Karet Karya No.1, RT.5/RW.7','Female','4 September 1981 '), 
('CU005','Nicki Minaj','Jl. Kuningan Barat Raya No.2, RT.1/RW.1','Female','8 December 1982'), 
('CU006','Lucinta Luna','Jl. Tomang Raya No.16-18, RT.5/RW.1','Female','16 June 1989'), 
('CU007','Donald Trump','Jl. Palmerah Utara No.100, RT.1/RW.7','Male','14 June 1946'), 
('CU008','Lee Min Ho','Jl. Jend. Sudirman No.28, RT.14/RW.1','Male','22 June 1987'), 
('CU009','Seungri','Jl. Tentara Pelajar No.21, RT.1/RW.7','Male','12 December 1990'), 
('CU010','Kris Wu Yi Fan','Jl. H. Arsyad No.37, RT.2/RW.7','Male','6 November 1990'), 
('CU011','Stephen Chou','Jl. Cipaku V No.1, RT.6/RW.5','Male','22 June 1962'), 
('CU012','Lin Jun Jie','Jl. Bendungan Hilir No.114A, RT.13/RW.6','Male','27 March 1981'), 
('CU013','Celine Dion','Jl. Merpati No.3, RW.10','Female','30 March 1968')


--Insert Material
INSERT INTO MsMaterial VALUES
('MA001', 'Acetate', 'Equipment', '24000'), ('MA002', 'Cupro', 'Equipment', '40000'), 
('MA003', 'Flannel', 'Equipment', '30000'), ('MA004', 'Lyocell', 'Equipment', '50000'), 
('MA005', 'PVC-Polyvinyl chloride', 'Equipment', '30000'), ('MA006', 'Rayon', 'Equipment', '20000'), 
('MA007', 'Recycled PET', 'Supplies', '15000'), ('MA008', 'Recycled bob', 'Supplies', '30000'), 
('MA009', 'Tyvek', 'Supplies', '50000'), ('MA010', 'Natural Fibers', 'Supplies', '70000'), 
('MA011', 'Hemp', 'Supplies', '10000'), ('MA012', 'Jute', 'Supplies', '20000')



--Insert Clothes
INSERT INTO MsClothes VALUES
('CL001', 'Top', 'Cotton'), ('CL002', 'Pants', 'Cotton'), 
('CL003', 'Jump Suit', 'Cotton'), ('CL004', 'Top', 'Viscose'), 
('CL005', 'Pants', 'Viscose'), ('CL006', 'Sport Wear', 'Polyester'), 
('CL007', 'Jacket', 'Polyester'), ('CL008', 'Dress', 'Polyester'), 
('CL009', 'Shirt', 'Linen'), ('CL010', 'Coat', 'Linen'), 
('CL011', 'Sweater', 'Wool'), ('CL012', 'Cardigan', 'Wool')


-------------------------------------------------Transaction (15)

--Insert PurchaseTransaction
INSERT INTO HeaderPurchaseTransaction VALUES
('PU001', 'ST003', 'VE011', '12 June 2019'), ('PU002', 'ST007', 'VE002', '12 June 2019'), 
('PU003', 'ST002', 'VE009', '12 June 2019'), ('PU004', 'ST008', 'VE007', '17 June 2019'), 
('PU005', 'ST012', 'VE004', '17 June 2019'), ('PU006', 'ST001', 'VE005', '17 June 2019'), 
('PU007', 'ST004', 'VE013', '17 June 2019'), ('PU008', 'ST010', 'VE012', '24 June 2019'), 
('PU009', 'ST011', 'VE007', '24 June 2019'), ('PU010', 'ST002', 'VE011', '24 June 2019'), 
('PU011', 'ST013', 'VE003', '15 July 2019'), ('PU012', 'ST005', 'VE008', '15 July 2019'), 
('PU013', 'ST009', 'VE010', '16 July 2019'), ('PU014', 'ST006', 'VE001', '16 July 2019'), 
('PU015', 'ST013', 'VE006', '16 July 2019'), ('PU016', 'ST008', 'VE011', '23 July 2019'), 
('PU017', 'ST006', 'VE001', '23 July 2019'), ('PU018', 'ST008', 'VE005', '23 July 2019'), 
('PU019', 'ST010', 'VE005', '30 July 2019'), ('PU020', 'ST008', 'VE001', '30 July 2019')




--Insert ServiceTransaction
INSERT INTO HeaderServiceTransaction VALUES
('SR001', 'ST003', 'CU009', '12 June 2019'), ('SR002', 'ST007', 'CU006', '12 June 2019'), 
('SR003', 'ST002', 'CU011', '12 June 2019'), ('SR004', 'ST008', 'CU013', '17 June 2019'), 
('SR005', 'ST012', 'CU005', '17 June 2019'), ('SR006', 'ST001', 'CU002', '17 June 2019'), 
('SR007', 'ST004', 'CU010', '17 June 2019'), ('SR008', 'ST010', 'CU008', '24 June 2019'), 
('SR009', 'ST011', 'CU007', '24 June 2019'), ('SR010', 'ST002', 'CU012', '24 June 2019'), 
('SR011', 'ST013', 'CU001', '15 July 2019'), ('SR012', 'ST005', 'CU013', '16 July 2019'), 
('SR013', 'ST009', 'CU009', '16 July 2019'), ('SR014', 'ST006', 'CU013', '16 July 2019'), 
('SR015', 'ST013', 'CU010', '16 July 2019'), ('SR016', 'ST008', 'CU004', '23 July 2019'), 
('SR017', 'ST006', 'CU008', '23 July 2019'), ('SR018', 'ST004', 'CU005', '23 July 2019'), 
('SR019', 'ST010', 'CU003', '30 July 2019'), ('SR020', 'ST008', 'CU007', '30 July 2019')





-------------------------------------------------Transaction Detail(25)

--Insert DetailPurchaseTransaction
INSERT INTO DetailPurchaseTransaction VALUES
('PU001', 'MA004', '9'), ('PU002', 'MA007', '3'), ('PU003', 'MA001', '2'), ('PU003', 'MA012', '7'), ('PU003', 'MA003', '3'), 
('PU004', 'MA009', '10'), ('PU004', 'MA011', '10'), ('PU005', 'MA002', '9'), ('PU005', 'MA008', '5'), ('PU006', 'MA005', '8'), 
('PU007', 'MA010', '11'), ('PU008', 'MA009', '2'), ('PU008', 'MA006', '3'), ('PU008', 'MA012', '3'), ('PU009', 'MA002', '4'), 
('PU009', 'MA008', '12'), ('PU010', 'MA010', '4'), ('PU010', 'MA004', '11'), ('PU010', 'MA007', '10'), ('PU011', 'MA003', '5'),  
('PU012', 'MA003', '8'), ('PU012', 'MA009', '10'), ('PU013', 'MA012', '12'), ('PU014', 'MA002', '2'), ('PU014', 'MA003', '4'), 
('PU015', 'MA003', '7'), ('PU016', 'MA010', '3'), ('PU016', 'MA006', '12'), ('PU017', 'MA002', '2'), ('PU017', 'MA003', '5'), 
('PU018', 'MA011', '5'), ('PU019', 'MA005', '8'), ('PU020', 'MA005', '10'), ('PU020', 'MA010', '2'), ('PU020', 'MA011', '2')

--Insert DetailServiceTransaction
INSERT INTO DetailServiceTransaction VALUES
('SR001', 'CL008', 'Dry Cleaning Service', '22000'), 
('SR001', 'CL004', 'Dry Cleaning Service', '19000'), 
('SR002', 'CL007', 'Laundry service', '22000'), 
('SR003', 'CL002', 'Laundry service', '22000'), 
('SR003', 'CL005', 'Ironing Service', '27000'), 
('SR003', 'CL001', 'Ironing Service', '22000'), 
('SR004', 'CL008', 'Dry Cleaning Service', '17000'), 
('SR004', 'CL009', 'Ironing Service', '19000'), 
('SR005', 'CL010', 'Laundry service', '24000'), 
('SR006', 'CL001', 'Dry Cleaning Service', '19000'), 
('SR006', 'CL008', 'Dry Cleaning Service', '17000'),
('SR006', 'CL002', 'Ironing Service', '14000'), 
('SR007', 'CL003', 'Laundry service', '14000'), 
('SR007', 'CL004', 'Dry Cleaning Service', '19000'), 
('SR007', 'CL005', 'Laundry service', '19000'), 
('SR007', 'CL012', 'Dry Cleaning Service', '22000'), 
('SR008', 'CL003', 'Dry Cleaning Service', '22000'), 
('SR008', 'CL010', 'Laundry service', '27000'), 
('SR009', 'CL008', 'Dry Cleaning Service', '17000'), 
('SR010', 'CL009', 'Laundry service', '24000'), 
('SR011', 'CL003', 'Laundry service', '14000'), 
('SR012', 'CL005', 'Dry Cleaning Service', '24000'), 
('SR013', 'CL002', 'Dry Cleaning Service', '19000'), 
('SR013', 'CL007', 'Ironing Service', '22000'), 
('SR014', 'CL009', 'Ironing Service', '27000'), 
('SR014', 'CL011', 'Ironing Service', '27000'), 
('SR015', 'CL001', 'Dry Cleaning Service', '22000'), 
('SR016', 'CL010', 'Laundry service', '27000'), 
('SR016', 'CL012', 'Laundry service', '27000'), 
('SR017', 'CL010', 'Dry Cleaning Service', '25000'), 
('SR018', 'CL006', 'Ironing Service', '22000'), 
('SR018', 'CL011', 'Ironing Service', '27000'), 
('SR019', 'CL003', 'Dry Cleaning Service', '22000'), 
('SR019', 'CL012', 'Laundry service', '30000'), 
('SR020', 'CL007', 'Laundry service', '19000')
