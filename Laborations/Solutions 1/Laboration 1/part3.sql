# Show the Cartesian product between Cars and Bookings

SELECT * FROM Cars, Bookings;

# Show the Cartesian product between Customers and Bookings

SELECT * FROM Customers, Bookings;

# Show the results of converting the previous two joins to inner joins

SELECT * FROM Cars C INNER JOIN Bookings B ON C.CarNumber = B.CarNumber;
SELECT * FROM Customers C INNER JOIN Bookings B ON C.CustomerNumber = B.CustomerNumber;

# Show the names of all the customers that has made a booking

SELECT Name FROM Bookings B INNER JOIN Customers C ON B.CustomerNumber = C.CustomerNumber;

# Same as the previous but without all the duplicates

SELECT Name FROM Bookings B INNER JOIN Customers C ON B.CustomerNumber = C.CustomerNumber GROUP BY B.CustomerNumber;

# Show all the Volvo cars that has been booked at least once

SELECT * FROM Cars C INNER JOIN Bookings B ON C.CarNumber = B.CarNumber WHERE Brand = "Volvo";

# Show all the customers that has rented a Volvo

SELECT * FROM Customers Cu
  INNER JOIN Bookings B ON Cu.CustomerNumber = B.CustomerNumber
  INNER JOIN Cars Ca ON Ca.CarNumber = B.CarNumber
  WHERE Brand = "Volvo";

# Show all cars that has been booked at least once

SELECT C.* FROM Cars C INNER JOIN Bookings B ON C.CarNumber = B.CarNumber;

# Show all cars that has never been booked

SELECT * FROM Cars C WHERE EXISTS(SELECT 1 FROM Bookings B WHERE C.CarNumber = B.CarNumber);

# Show all the black cars that has been booked at least once

SELECT C.* FROM Cars C INNER JOIN Bookings B ON C.CarNumber = B.CarNumber WHERE Color = "Black";
