# Show the average price per day for the cars

SELECT AVG(PricePerDay) FROM Cars;

# Show the total price per day for the cars

SELECT SUM(PricePerDay) FROM Cars;

# Show the average price for red cars

SELECT AVG(PricePerDay) FROM Cars WHERE Color = "Red";

# Show the total price for all cars grouped by the different colors

SELECT Color, SUM(PricePerDay) FROM Cars GROUP BY Color;


# Show how many cars are of red color

SELECT COUNT(Color) FROM Cars WHERE COLOR = "Red";

# Show how many cars exists of each color

Select Color, COUNT(Color) FROM Cars GROUP BY Color;

# Show the car that is the most expensive to rent. (Do not hard code this with the most expensive price, instead use ORDER and LIMIT

Select * From Cars ORDER BY PricePerDay DESC LIMIT 1;