
USE library_system;

INSERT INTO branch VALUES('Kandy 01', 'F 32/3 paradeniya,kandy', 0812341212);
INSERT INTO branch VALUES('Kandy 02', 'F 12 polgolla,kandy', 0812341289);
INSERT INTO branch VALUES('Colombo 01', 'G  24 mardana,colombo', 0115641267);
INSERT INTO branch VALUES('Colombo 02', 'F 01 galle road colombo', 0115641169);
INSERT INTO branch VALUES('Colombo 03', 'G 11/1 grandpass,colombo', 0115641261);
INSERT INTO branch VALUES('Kurnagala 01', 'E 13 kandy road,kurnagala', 0541234121);
INSERT INTO branch VALUES('Galle 01', 'E 33 hambantota road,galle', 0164561231);

DELETE FROM branch 
WHERE branch_name='Colombo 03';

DELETE FROM branch 
WHERE branch_name = 'Kandy 02';

SELECT*FROM branch; 

INSERT INTO customer VALUES(01, 'FERNANDO', 'E 61/1 main street, mawanella', '1993-01-23', 076543432);
INSERT INTO customer VALUES(02, 'REBEKKA', 'E 72 nuwara eliya road gampola', '1997-03-06', 076123764);
INSERT INTO customer VALUES(03, 'CARLA', 'F 23/2 colombo road kadawatha', '1997-05-12', 075564654);
INSERT INTO customer VALUES(04, 'WATSON', 'G 02 kandy road kadugannawa', '1987-08-15', 078430912);
INSERT INTO customer VALUES(05, 'ALICE', 'E 31 katugastota, kandy', '1990-11-21', 075098987);
INSERT INTO customer VALUES(06, 'JHON', 'F 19/4 morattuwa, colombo', '1965-07-14', 076876578);
INSERT INTO customer VALUES(07, 'PERERA', 'G 23 kurnagala road mawathagama', '1990-02-28', 071454534);
INSERT INTO customer VALUES(08, 'AMAYA', 'F 47/3 kurnagala road negombo','1991-03-26', 072347645);
INSERT INTO customer VALUES(09, 'LAILA', 'E 32/1 galle road kalutara', '1969-12-31', 072675767);
INSERT INTO customer VALUES(10, 'KUMARA',  'E 10 puttalam road chilaw', '1987-04-17', 076545453);
INSERT INTO customer VALUES(11, 'NUWAN', 'F 64 main road warakapola', '1954-10-24', 078098678);
INSERT INTO customer VALUES(12 , 'CARLA', 'E 45 main street nuwara eliya', '1995-07-08', 075767611);

SELECT*FROM customer;

SELECT*FROM customer
WHERE customer_id= 3;


INSERT INTO login VALUES('fernando321',01,'Kandy 01');
INSERT INTO login VALUES('rebekka453',02,'Kurnagala 01');
INSERT INTO login VALUES('carla768',03,'Kandy 01');
INSERT INTO login VALUES('watson329',04,'Colombo 02');
INSERT INTO login VALUES('alice154',05,'galle 01');
INSERT INTO login VALUES('jhon726',06,'colombo 02');
INSERT INTO login VALUES('perera624',07,'Kurnagala 01');
INSERT INTO login VALUES('amaya564',08,'galle 01');
INSERT INTO login VALUES('laila564',09,'colombo 01');
INSERT INTO login VALUES('kumara675',10,'colombo 01');


SELECT*FROM login
ORDER BY customer_id;
INSERT INTO login VALUES('nuwan294',11,'kandy 01');
INSERT INTO login VALUES('carla687',12,'colombo 01');




INSERT INTO book VALUES(101, 'the lord of the rings', 'Tolkein', 'Block A', '9886742331236', 'Colombo 01');
INSERT INTO book VALUES(102, 'The silent patient', 'Alex miechelders', 'Block B', '8679342136754', 'Colombo 01');
INSERT INTO book VALUES(103, 'The famous five', 'Guid blyton', 'Block A', '8795034674671', 'Colombo 02');
INSERT INTO book VALUES(104, 'The hobbits', 'Tolkien', 'Block B', '9056487546345', 'Colombo 02');
INSERT INTO book VALUES(105, 'Think and grow rich','Nepolien hill', 'Block A', '8674590874543', 'Kandy 01');
INSERT INTO book VALUES(106, 'The silent patient', 'Alex miechelders', 'Block B', '8795034674671', 'kandy 01');
INSERT INTO book VALUES(107, 'The lord of the rings', 'Tolkien', 'Block A', '9886742331236', 'kurnagala 01');
INSERT INTO book VALUES(108, 'The hobbits', 'Tolkien', 'Block A', '9056487546345', 'kurnagala 01');
INSERT INTO book VALUES(109, 'The lord of the rings', 'Tolkien', 'Block A', '9886742331236', 'kurnagala 01');
INSERT INTO book VALUES(110, 'The lord of the rings', 'Tolkien', 'Block A', '9886742331236', 'Galle 01');
INSERT INTO book VALUES(111, 'The famous five', 'Guid blyton', 'Block B', '8795034674671', 'Galle 01');
INSERT INTO book VALUES(112, 'The famous five', 'Guid blyton', 'Block B', '8795034674671', 'Kandy 01');

SELECT*FROM book;

SELECT*FROM book
WHERE book_title='The lord of the rings';


DELETE FROM book
WHERE book_title='The silent patient';

UPDATE book
SET book_title = 'Think and grow rich' , first_author ='Nepolien hill', ISBN_no = '8674590874543'
WHERE book_id=108;

INSERT INTO employee VALUES(20, 'Library counter', '2016-04-09', 30000, 'Colombo 01');
INSERT INTO employee VALUES(21, 'Library manager', '2016-09-14', 40000, 'Colombo 01');
INSERT INTO employee VALUES(22, 'Library counter', '2016-09-15', 30000, 'Kandy 01');
INSERT INTO employee VALUES(23, 'Library manager', '2017-01-14', 40000, 'Kandy 01');
INSERT INTO employee VALUES(24, 'Library counter', '2017-04-25', 30000, 'kurnagala 01');
INSERT INTO employee VALUES(25, 'Library manager', '2017-04-25', 40000, 'kurnagala 01');
INSERT INTO employee VALUES(26, 'Library counter', '2017-04-29', 30000, 'galle 01');
INSERT INTO employee VALUES(27, 'Library manager', '2017-05-25', 40000, 'galle 01');
INSERT INTO employee VALUES(28, 'Library counter', '2017-07-21', 30000, 'Colombo 02');
INSERT INTO employee VALUES(29, 'Library manager', '2017-07-25', 40000, 'Colombo 02');

SELECT*FROM employee;

INSERT INTO borrow(customer_id,book_id) VALUES(03,107);
INSERT INTO borrow(customer_id,book_id) VALUES(06,109);
INSERT INTO borrow(customer_id,book_id,fee_lateReturn_RS) VALUES(01,102,50.00);
INSERT INTO borrow(customer_id,book_id) VALUES(10,111);
INSERT INTO borrow(customer_id,book_id,cost_to_lost_RS) VALUES(08,106,500.00);
INSERT INTO borrow(customer_id,book_id) VALUES(02,103);
INSERT INTO borrow(customer_id,book_id) VALUES(05,101);
INSERT INTO borrow(customer_id,book_id,fee_lateReturn_RS) VALUES(07,112,50.00);
INSERT INTO borrow(customer_id,book_id) VALUES(11,110);
INSERT INTO borrow(customer_id,book_id,fee_lateReturn_RS) VALUES(04,104,50.00);
INSERT INTO borrow(customer_id,book_id,cost_to_lost_RS) VALUES(12,108,640.00);

UPDATE borrow
SET cost_to_lost_RS = 370.00
WHERE book_id = 109;



SELECT*FROM borrow;

SELECT SUM(fee_lateReturn_RS) ,SUM(cost_to_lost_RS) FROM BORROW;

SELECT sum(fee_lateReturn_RS + cost_to_lost_RS) FROM borrow;












