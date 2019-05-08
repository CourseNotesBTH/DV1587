# Show all the cars that cost more than the average

SELECT * FROM Cars WHERE PricePerDay > (SELECT AVG(PricePerDay) FROM Cars);

# Show the car with the lowest cost with black color

SELECT * FROM Cars WHERE Color = "Black" ORDER BY PricePerDay LIMIT 1;

# Show the car which has the lowest cost

SELECT * FROM Cars ORDER BY PricePerDay LIMIT 1;

# Show all the black cars that has been booked at least once by using a sub query

SELECT * FROM Cars C WHERE Color = "Black" AND (SELECT 1 FROM Bookings B WHERE B.CarNumber = C.CarNumber LIMIT 1);