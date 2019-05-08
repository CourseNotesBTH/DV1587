# Insert data to Cars
INSERT INTO Cars (Brand, Model, Color, PricePerDay) VALUES
  ('Peugeot', '208', 'Blue', 800),
  ('Peugeot', '3008', 'Green', 700),
  ('Volkswagen', 'Polo', 'Red', 600),
  ('Volvo', 'V70', 'Silver', 1200),
  ('Tesla', 'X', 'Black', 2000),
  ('SAAB', '9-5', 'Green', 850),
  ('Volvo', 'V40', 'Red', 900),
  ('Fiat', '500', 'Black', 1050),
  ('Volvo', 'V40', 'Green', 850),
  ('Fiat', '500', 'Red', 950),
  ('Volkswagen', 'Polo', 'Silver', 700),
  ('BMW', 'M3', 'Black', 1599),
  ('Volkswagen', 'Golf', 'Red', 1500);

# Insert data to Customers
INSERT INTO Customers (Name, BirthDate) VALUES
  ('Alice Andersson', '1990-05-05'),
  ('Oscar Johansson', '1975-08-10'),
  ('Nora Hansen', '1981-10-27'),
  ('William Johansen', '2000-01-17'),
  ('Lucía García', '1987-12-13'),
  ('Hugo Fernández', '1950-03-16'),
  ('Sofia Rossi', '1995-08-04'),
  ('Francesco Russo', '2000-02-26'),
  ('Olivia Smith', '1972-05-23'),
  ('Oliver Jones', '1964-05-08'),
  ('Shaimaa Elhawary', '1999-12-23'),
  ('Mohamed Elshabrawy', '1997-11-07'),
  ('Jing Wong', '1947-07-15'),
  ('Wei Lee', '1962-09-29'),
  ('Aadya Singh', '1973-01-01'),
  ('Aarav Kumar', '1986-06-28'),
  ('Louise Martin', '1994-04-22'),
  ('Gabriel Bernard', '1969-12-01'),
  ('Emma Smith', '1971-03-18'),
  ('Noah Johnson', '1800-12-16'),
  ('Alice Silva', '1988-12-04'),
  ('Miguel Santos', '1939-12-29');

# Insert data to Bookings
INSERT INTO Bookings (CustomerNumber, CarNumber, StartDate, EndDate) VALUES
  (1, 6, '2018-01-02', '2018-01-15'),
  (2, 1, '2018-01-03', '2018-01-05'),
  (3, 3, '2018-01-03', '2018-01-04'),
  (4, 8, '2018-01-04', '2018-01-30'),
  (5, 10, '2018-01-10', '2018-01-13'),
  (1, 1, '2018-01-20', '2018-01-25'),
  (2, 13, '2018-01-21', '2018-01-30'),
  (3, 6, '2018-01-22', '2018-01-30'),
  (1, 2, '2018-01-29', '2018-02-01'),
  (2, 5, '2018-02-02', '2018-02-06'),
  (6, 1, '2018-02-20', '2018-02-25'),
  (7, 6, '2018-02-21', '2018-02-24'),
  (8, 3, '2018-02-21', '2018-02-28'),
  (10, 3, '2018-02-22', '2018-02-26'),
  (9, 12, '2018-02-22', '2018-02-28'),
  (10, 13, '2018-03-01', '2018-03-10'),
  (11, 1, '2018-03-04', '2018-03-09'),
  (10, 3, '2018-03-11', '2018-03-14'),
  (8, 6, '2018-03-14', '2018-03-17'),
  (9, 5, '2018-03-14', '2018-03-30'),
  (7, 12, '2018-03-18', '2018-03-20'),
  (6, 8, '2018-03-18', '2018-04-02');