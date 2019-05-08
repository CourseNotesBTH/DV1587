# Show all cars whose price is in the range 600 - 1000

SELECT * FROM Cars WHERE PricePerDay BETWEEN 600 AND 1000;

# Show all the customers who are born between 1960 - 1980

SELECT * FROM Customers WHERE BirthDate BETWEEN "1960-01-01" AND "1980-01-01";

# Show all bookings that last between 2 - 4 days

SELECT * FROM Bookings WHERE DateDiff(EndDate, StartDate) BETWEEN 2 AND 4;

# Show all the cars that are eligible for booking between 2018-01-10 - 2018-01-20

# ------

# Show the car that has been booked the most

SELECT * FROM Cars C ORDER BY (SELECT SUM(1) FROM Bookings B Where C.CarNumber = B.CarNumber) DESC LIMIT 1;

# Show all the customers who are born in January or February and has booked at least one car

SELECT C.* FROM Customers C INNER JOIN Bookings B ON C.CustomerNumber = B.CustomerNumber WHERE MONTH(BirthDate) IN (1, 2);