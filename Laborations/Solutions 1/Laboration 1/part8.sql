# Create a view, that shows all the information about black cars

CREATE VIEW BlackCars AS
  SELECT * FROM Cars WHERE Color = "Black";
SELECT * FROM BlackCars;

# Create a view that shows all information about black cars and the addition of the weekly price as a column

CREATE VIEW BlackCarsWeeklyPrice AS
  SELECT *, PricePerDay * 7 AS "PricePerWeek" FROM BlackCars;
Select * FROM BlackCarsWeeklyPrice;

# Try and insert a car into both views created

SELECT * FROM BlackCars;
INSERT INTO BlackCars (Brand, Model, Color, PricePerDay) VALUES ('Tesla', 'S', 'Cherry Red', 3500);
SELECT * FROM Cars;

SELECT * FROM BlackCarsWeeklyPrice;
INSERT INTO BlackCarsWeeklyPrice (Brand, Model, Color, PricePerDay) VALUES ('Tesla', 'S', 'Cherry Red', 3500);
SELECT * FROM Cars;

# Create a view that shows all the cars available for booking at this current time

CREATE VIEW AvailableCars AS
  SELECT * FROM Cars C WHERE NOT EXISTS(SELECT 1 FROM Bookings B WHERE C.CarNumber = B.CarNumber AND DATE(NOW()) BETWEEN StartDate AND EndDate)
SELECT * FROM AvailableCars

# Alter the previous view, with the condition that the cars have to be available for at least 3 days of renting

# -----
