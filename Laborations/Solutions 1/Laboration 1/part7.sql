# There is a customer born in 1800 according to the records, this is obviously not possible so delete that customer

SELECT * FROM Customers WHERE YEAR(BirthDate) = 1800;
DELETE FROM Customers WHERE YEAR(BirthDate) = 1800;
SELECT * FROM Customers WHERE YEAR(BirthDate) = 1800;

# The Tesla X car that is available for renting needs to have its price increased by 200:-

SELECT * FROM Cars WHERE Brand = "Tesla";
UPDATE Cars SET PricePerDay = PricePerDay + 200 WHERE Brand = "Tesla" AND Model = "X";
SELECT * FROM Cars WHERE Brand = "Tesla";

# All the Peugeot cars also needs to be increased in price, in this case by 20%

SELECT * FROM Cars WHERE Brand = "Peugeot";
UPDATE Cars SET PricePerDay = PricePerDay * 1.2 WHERE Brand = "Peugeot";
SELECT * FROM Cars WHERE Brand = "Peugeot";

# Now we fast forward into the future and Sweden has changed its currency to Euros (€). Fix both the data itself (assume the conversion rate is 10SEK == 1 EUR) and the table so it can handle the new prices

SELECT * FROM Cars;
UPDATE Cars SET PricePerDay = PricePerDay / 10.00;
SELECT * FROM Cars;

# Can we construct a PK in the Bookings table without adding a new column? If yes, do that. If not, add another column that allows you to uniquely identify each booking

# --------