# Do a stored procedure that collects all the cars that are available between two
# dates. The inputs to the procedure is starting and ending dates, and the
# function shall return all the car numbers that are available to be booked
# between the two dates.

DROP PROCEDURE IF EXISTS AvailableCars;
DELIMITER //
CREATE PROCEDURE AvailableCars(StartDate DATE, EndDate DATE)
BEGIN
  SELECT * FROM Cars;
END //
DELIMITER ;

CALL AvailableCars("2018-01-01", "2018-02-02");

# Do a stored procedure that handles the booking of renting a car. The input to
# the procedure is the starting and ending dates, the cars number,  and the
# customer number. If it is successful it should return 0, if it is unsuccessful

DROP PROCEDURE IF EXISTS AvailableCars;
DELIMITER //
CREATE PROCEDURE AvailableCars(StartDate DATE, EndDate DATE, CarNumber BIGINT)
BEGIN
  DECLARE Result INT DEFAULT 0;
  SELECT * FROM Cars;
  ...
END //
DELIMITER ;

CALL AvailableCars("2018-01-01", "2018-02-02");