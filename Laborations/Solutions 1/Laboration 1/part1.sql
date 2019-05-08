# Show all customers with all their information

SELECT * FROM Customers;

# Show all customers, but only with their name and birth date

SELECT Name, BirthDate FROM Customers;

# Show all cars that cost more than 1000:- per day

SELECT * FROM Cars WHERE PricePerDay > 1000;

# Show all Volvo cars, only with their brand name and their model

SELECT Brand, Model FROM Cars WHERE Brand = "Volvo";

# Show all customers, only with their names, in a sorted fashion based on their name. Both in ascending and descending order

SELECT Name FROM Customers ORDER BY ASCII(Name) ASC;
SELECT Name FROM Customers ORDER BY ASCII(Name) DESC;

# Show all customers, only with their names, that were born in 1990 or later in a sorted fashion based on their birth date

Select Name FROM Customers WHERE BirthDate >= "1990-01-01" ORDER BY BirthDate ASC;

# Show all cars that are red and cost less than 1500

Select * FROM Cars WHERE Color = "Red" AND PricePerDay < 1500;

# Show all customers, only with their names, that were born between 1970-1990

SELECT Name FROM Customers WHERE BirthDate >= "1970-01-01" AND BirthDate <= "1990-01-01";

# Show all bookings that are longer than 6 days

SELECT * FROM Bookings WHERE (EndDate - StartDate) >= 6;

# Show all bookings that overlap with the interval 2018-02-01 - 2018-02-25

SELECT * FROM Bookings WHERE StartDate BETWEEN "2018-02-01" AND "2018-02-25" OR EndDate BETWEEN "2018-02-01" AND "2018-02-25";

# Show all customers whose first name starts with an O

SELECT * FROM Customers WHERE LEFT(Name, 1) = "O";