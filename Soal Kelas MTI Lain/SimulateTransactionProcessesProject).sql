USE RA_Laundry

--soal d
INSERT INTO HeaderPurchaseTransaction VALUES
('PU021', 'ST011', 'VE011', '24 June 2019'), 
('PU022', 'ST012', 'VE012', '24 June 2019'), 
('PU023', 'ST013', 'VE013', '15 July 2019'), 
('PU024', 'ST011', 'VE011', '15 July 2019'), 
('PU025', 'ST012', 'VE012', '23 July 2019'), 
('PU026', 'ST013', 'VE013', '30 July 2019')

INSERT INTO HeaderServiceTransaction VALUES
('SR021', 'ST011', 'CU009', '24 June 2019'),
('SR022', 'ST012', 'CU008', '24 June 2019'),
('SR023', 'ST013', 'CU009', '15 July 2019'),
('SR024', 'ST011', 'CU009', '15 July 2019'),
('SR025', 'ST012', 'CU008', '23 July 2019'),
('SR026', 'ST013', 'CU008', '30 July 2019')

INSERT INTO DetailPurchaseTransaction VALUES
('PU001', 'MA002', '2'),
('PU007', 'MA003', '1'),
('PU007', 'MA004', '5'),
('PU018', 'MA010', '5'),
('PU023', 'MA011', '10'),
('PU023', 'MA012', '1')

INSERT INTO DetailServiceTransaction VALUES
('SR021', 'CL009', 'Dry Cleaning Service', '22000'), 
('SR022', 'CL010', 'Dry Cleaning Service', '22000'), 
('SR023', 'CL010', 'Laundry service', '27000'), 
('SR023', 'CL011', 'Ironing Service', '19000'), 
('SR025', 'CL011', 'Laundry service', '27000'), 
('SR025', 'CL012', 'Ironing Service', '19000')



