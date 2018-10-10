DROP TABLE IF EXISTS Person;

CREATE TABLE Person (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT,
  Age INTEGER,
  Height INTEGER,
  City TEXT,
  FavoriteColor TEXT
);

INSERT INTO Person
(Name, Age, Height, City, FavoriteColor)
Values
('Chris',26,185,'Lagrangeville','Purple'),
('John',27,190,'Bronx','Red'),
('Nova',20,170,'Seattle','Blue'),
('Kian',23,192,'San Fransisco','Yellow'),
('Stephanie',24,150,'Pheonix','Green');

SELECT * FROM Person
ORDER BY Height DESC;

SELECT * FROM Person
ORDER BY Height ASC;

SELECT * FROM Person
ORDER BY Age DESC;

SELECT * FROM Person
WHERE Age > 20;

SELECT * FROM Person
WHERE Age == 18;

SELECT * FROM Person
WHERE Age != 27;

SELECT * FROM Person
WHERE FavoriteColor != 'Red'

SELECT * FROM Person
WHERE FavoriteColor != 'Red' AND FavoriteColor != 'Blue';

SELECT * FROM Person
WHERE FavoriteColor != 'Orange' OR FavoriteColor != 'Green';

SELECT * FROM Person
WHERE FavoriteColor IN ('Orange','Green','Blue');

SELECT * FROM Person
WHERE FavoriteColor IN ('Yellow','Purple');

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders (
	PersonID INTEGER,
	ProductName TEXT,
	ProductPrice INTEGER,
	Quantity INTEGER
);

INSERT INTO Orders
(PersonID, ProductName, ProductPrice, Quantity)
Values
(0,'Bunjie Rope', 100, 20),
(1,'Sand House', 400, 5),
(2,'Toplap', 3000, 40),
(3,'Metal Box On Wheels', 20000, 10),
(4,'Graphite Stick', 1, 100);

SELECT * FROM Orders;

SELECT SUM(Quantity) FROM Orders;

SELECT SUM(ProductPrice) FROM Orders;

SELECT ProductPrice * Quantity FROM Orders
WHERE PersonID = 2;

INSERT INTO Artist
(Name)
VALUES
('John Legend'),
('Diplo'),
('Marshmello');

SELECT * FROM Artist
ORDER BY Name DESC
LIMIT 10;

SELECT * FROM Artist
ORDER BY Name ASC
LIMIT 5;

SELECT * FROM Artist
WHERE Name LIKE 'Black%'

SELECT * FROM Artist
WHERE Name LIKE '%Black%'

SELECT COUNT(*) FROM Invoice
WHERE BillingCountry = 'USA';

SELECT MAX(Total) FROM Invoice

SELECT MIN(Total) FROM Invoice

SELECT * FROM Invoice
WHERE Total > 5;

SELECT COUNT(*) FROM Invoice
WHERE Total < 5;

SELECT COUNT(*) FROM Invoice
WHERE BillingState IN ('CA','TX','AZ');

SELECT AVG(Total) FROM Invoice

SELECT SUM(Total) FROM Invoice