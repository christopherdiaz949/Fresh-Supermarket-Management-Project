CREATE DATABASE SUPERMARKET3;
USE SUPERMARKET3

CREATE TABLE BillTbl (
Billid INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
SellerName VARCHAR(50) NOT NULL,
BillDate VARCHAR(50) NOT NULL,
TotAmt DECIMAL (10,2) NOT NULL
);

DROP TABLE BillTbl

CREATE TABLE CategoryTbl (
Catd INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
CatName VARCHAR (30) NOT NULL,
CatDesc	VARCHAR (50) NOT NULL,
);

select * from CategoryTbl
INSERT INTO CategoryTbl VALUES ('Kain','lentur');


DROP TABLE CategoryTbl

CREATE TABLE ProductTbl (
Proid INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
ProName VARCHAR (30) NOT NULL,
ProQty INT NOT NULL,
ProdPrice DECIMAL (10,2) NOT NULL,
ProdCat VARCHAR (50) NOT NULL,
Catd INT
CONSTRAINT FK_ProductTbl_Catd REFERENCES CategoryTbl(Catd)
);
TRUNCATE TABLE CategoryTbl
TRUNCATE TABLE ProductTbl
select * from ProductTbl
drop table ProductTbl


CREATE TABLE SellerTbl (
Sellerid INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
SellerName VARCHAR (30) NOT NULL,
SellerAge INT NOT NULL,
SellerPhone VARCHAR (50) NOT NULL,
SellerPass VARCHAR (50) NOT NULL,
);
SELECT * FROM CategoryTbl
DROP TABLE SellerTbl

CREATE TABLE SellerBillTbl (
Sellerid INT 
CONSTRAINT FK_SellerBillTbl_Sellerid REFERENCES SellerTbl(Sellerid),
Billid INT
CONSTRAINT FK_SellerBillTbl_Billid REFERENCES BillTbl(Billid)
);
select * from SellerTbl
TRUNCATE TABLE SellerTbl
DROP TABLE SellerBillTbl

CREATE TABLE SellerProductTbl (
Sellerid INT
CONSTRAINT FK_SellerProductTbl_Sellerid REFERENCES SellerTbl(Sellerid),
Proid INT
CONSTRAINT FK_SellerProductTbl_Proid REFERENCES ProductTbl(Proid)
);
TRUNCATE TABLE SellerProductTbl
DROP TABLE SellerTbl
DROP TABLE SellerProductTbl

CREATE TABLE ItemSell (
proid INT
CONSTRAINT FK_ItemSell_proid REFERENCES ProductTbl(proid),
ProName VARCHAR (30),
ProdPrice DECIMAL (10,2),
ProQty INT NOT NULL,
ProTotal DECIMAL (10,2) NOT NULL
);
TRUNCATE TABLE ItemSell
DROP TABLE ItemSell

CREATE TABLE ItemSellCustomer (
proid INT 
CONSTRAINT FK_ItemSellCustomer_proid REFERENCES ProductTbl(proid),
ProName VARCHAR (30),
ProdPrice DECIMAL (10,2),
ProQty INT NOT NULL,
ProTotal DECIMAL (10,2) NOT NULL
);
CREATE TABLE ProductCategoryTbl (
Proid INT
CONSTRAINT FK_ProductCategoryTbl_proid REFERENCES ProductTbl(proid),
Catd INT
CONSTRAINT FK_ProductCategoryTbl_Catd REFERENCES CategoryTbl(Catd)
);
);
DROP TABLE ItemSellCustomer
TRUNCATE TABLE ItemSellCustomer

select * from ItemSellCustomer
DROP TABLE ItemSellCUstomer

TRUNCATE TABLE ItemSell
select * from ItemSell
DROP TABLE SellerTbl

DROP TABLE sellerTbl

use master
DROP DATABASE SUPERMARKET2



