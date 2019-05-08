IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='Course')
  DROP TABLE Course
GO
CREATE TABLE Course
(
	codeCourse CHAR(6) NOT NULL,
	nameCourse VARCHAR(200) NOT NULL,
	pointsCourse DECIMAL(3,1) NOT NULL
);

--
-- Insert bulk data into Course table
-- File must be on same machine as database server
--
BULK INSERT Course
	FROM 'C:\course.txt'
	WITH
	(
		FIRSTROW = 2,
		FIELDTERMINATOR = '\t',
		ROWTERMINATOR = '\n',
		CODEPAGE = 'ACP'        -- Coding of character set
	)
;

SELECT * FROM Course;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='Register')
  DROP TABLE Register
GO
CREATE TABLE Register
(
	courseRegister CHAR(6) NOT NULL,
	termRegister CHAR(5) NOT NULL,
	starttermRegister CHAR(5) NOT NULL,
	instRegister VARCHAR(4) NOT NULL,
	utbomrRegister CHAR(2) NOT NULL,
	progRegister CHAR(5) NULL,
	konRegister CHAR(1) NOT NULL,
	nivaRegister CHAR(1) NOT NULL,
	hstkRegister DECIMAL(10,6) NOT NULL,
	hprkRegister DECIMAL(10,6) NOT NULL
);

--
-- Insert bulk data into Register table
-- File must be on same machine as database server
--
BULK INSERT Register
	FROM 'C:\register.txt'
	WITH
	(
		FIRSTROW = 2,
		FIELDTERMINATOR = '\t',
		ROWTERMINATOR = '\n'
	)
;

SELECT * FROM Register;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='Program')
  DROP TABLE Program
GO
CREATE TABLE Program
(
	kodProgram CHAR(5) NOT NULL,
	benamnProgram VARCHAR(120) NOT NULL
);

--
-- Insert bulk data into Program table
-- File must be on same machine as database server
--
BULK INSERT Program
	FROM 'C:\program.txt'
	WITH
	(
		FIRSTROW = 2,
		FIELDTERMINATOR = '\t',
		ROWTERMINATOR = '\n',
		CODEPAGE = 'ACP'        -- Coding of character set
	)
;

SELECT * FROM Program;