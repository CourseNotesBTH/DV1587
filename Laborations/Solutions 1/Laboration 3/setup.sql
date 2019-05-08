--
-- Create the database schema for lab3 (mySQL)
--

DROP TABLE IF EXISTS AccountLog;
DROP TABLE IF EXISTS Account;

--
-- Table Account
--
CREATE TABLE Account
(
  -- Primary key
  nrAccount      INT         NOT NULL,

  -- Attributes
  nameAccount    VARCHAR(15) NOT NULL,
  balanceAccount DECIMAL     NOT NULL,
  PRIMARY KEY (nrAccount)
);

INSERT INTO Account (nrAccount, nameAccount, balanceAccount) VALUES (1, 'Nils', 500);
INSERT INTO Account (nrAccount, nameAccount, balanceAccount) VALUES (2, 'Sven', 150);
INSERT INTO Account (nrAccount, nameAccount, balanceAccount) VALUES (3, 'Ingvar', 0);
INSERT INTO Account (nrAccount, nameAccount, balanceAccount) VALUES (4, 'Anna', 500);
INSERT INTO Account (nrAccount, nameAccount, balanceAccount) VALUES (5, 'Jenny', 850);

--
-- Table AccountLog
--
CREATE TABLE AccountLog
(
  -- Primary Key
  idAccountLog         INT      NOT NULL AUTO_INCREMENT,

  -- Foreign Key
  AccountLog_nrAccount INT      NOT NULL,

  -- Attributes
  timeAccountLog       DATETIME NOT NULL,
  amountAccountLog     DECIMAL  NOT NULL,

  PRIMARY KEY (idAccountLog),

  CONSTRAINT FKs
  FOREIGN KEY (AccountLog_nrAccount)
  REFERENCES Account (nrAccount)
);


SELECT *
FROM Account;
SELECT *
FROM AccountLog;