# Show all cars that has the cost 700, 800, and 850

SELECT * FROM Cars WHERE PricePerDay IN(700, 800, 850);

# Show all the customers that born in 1990, 1995, and 2000. (Hint: YEAR function)

SELECT * FROM Customers WHERE YEAR(BirthDate) IN(1990, 1995, 2000);

# Show all the bookings that start on 2018-01-03, 2018-02-22, or 2018-03-18

SELECT * FROM Bookings WHERE StartDate IN ("2018-01-03", "2018-02-22", "2018-03-18");

