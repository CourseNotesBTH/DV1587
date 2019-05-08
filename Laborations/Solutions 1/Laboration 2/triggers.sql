# Add an additional column to Customers that contains the amount of times a
# customer has booked a car. Then create an after insert trigger on the Bookings
# table that increments the newly created column in Customers whenever they do a
# successful booking of a car.

DELIMITER //
CREATE TRIGGER CustomerBooking AFTER INSERT
ON Bookings FOR EACH ROW
BEGIN
	UPDATE Customers C SET C.Bookings = C.Bookings + 1 WHERE C.CustomerNumber = NEW.CustomerNumber;
END //
DELIMITER ;

SELECT * FROM Customers;

INSERT INTO Bookings (CustomerNumber, CarNumber, StartDate, EndDate) VALUES (1, 1, "2018-01-03", "2019-02-02");


# Would it be possible to do this trigger with a BEFORE trigger? Why/Why not?