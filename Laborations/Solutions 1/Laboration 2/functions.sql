# Do a function that checks if a car is available for renting between two dates.
# The input to the function should be the starting and ending dates of the
# rental, the cars number, and it should return 0 if it is not available and 1 if
# it is available between the two dates.

DROP FUNCTION IF EXISTS SumDays;
DELIMITER //
CREATE FUNCTION SumDays(StartDate DATE, EndDate DATE, CarNumber BIGINT) RETURNS INT READS SQL DATA
BEGIN
  DECLARE Sum INT DEFAULT 0;
  SELECT 1 INTO Sum FROM Bookings B WHERE ...;
  RETURN Sum;
END //
DELIMITER ;

# Do a function that sums the total amount of days cars have been booked and
# returns the sum.

DROP FUNCTION IF EXISTS SumDays;
DELIMITER //
CREATE FUNCTION SumDays() RETURNS INT READS SQL DATA
BEGIN
  DECLARE Sum INT DEFAULT 0;
  SELECT SUM(EndDate - StartDate) INTO Sum FROM Bookings;
  RETURN Sum;
END //
DELIMITER ;

# Extend the previous function so that if there is an input parameter that
# matches a cars unique number, then it should only return the sum of that car.

DROP FUNCTION IF EXISTS SumDays;
DELIMITER //
CREATE FUNCTION SumDays(CarNumber BIGINT) RETURNS INT READS SQL DATA
BEGIN
  DECLARE Sum INT DEFAULT 0;
  SELECT SUM(EndDate - StartDate) INTO Sum FROM Bookings B WHERE B.CarNumber = CarNumber;
  RETURN Sum;
END //
DELIMITER ;
