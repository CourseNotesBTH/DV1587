# Setup Cars Table
CREATE TABLE Cars (
  CarNumber BIGINT AUTO_INCREMENT,
  Brand NCHAR (60) NOT NULL,
  Model NCHAR (60) NOT NULL,
  Color NCHAR (60) NOT NULL,
  PricePerDay DECIMAL (9, 2) NOT NULL,  /* Largest price is 1 000 000 with 2 decimals */
  Constraint PK_CAR
    PRIMARY KEY (CarNumber)
);

# Setup Customers Table
CREATE TABLE Customers (
  CustomerNumber BIGINT AUTO_INCREMENT,
  Name NCHAR (60) NOT NULL,
  BirthDate DATE NOT NULL,
  CONSTRAINT PK_CUSTOMER
    PRIMARY KEY (CustomerNumber)
);

# Setup Bookings Table
CREATE TABLE Bookings (
  CustomerNumber BIGINT NOT NULL,
  CarNumber BIGINT NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE NOT NULL,
  CONSTRAINT PK_BOOKING
    PRIMARY KEY (CustomerNumber, CarNumber, StartDate, EndDate),
  CONSTRAINT FK_CUSTOMER
    FOREIGN KEY (CustomerNumber) REFERENCES  Customers(CustomerNumber),
  CONSTRAINT FK_CAR
    FOREIGN KEY (CarNumber) REFERENCES Cars(CarNumber)
);