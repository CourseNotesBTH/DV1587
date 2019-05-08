-- PRIMARY KEY AS INDEX

-- Kör med explain
SELECT * FROM Course WHERE codeCourse = 'DV1219';

-- Lägg till ett Primary Index
ALTER TABLE Course ADD CONSTRAINT pk_codeCourse PRIMARY KEY (codeCourse);
SELECT * FROM Course WHERE codeCourse = 'DV1219';

-- FOREIGN KEY
SELECT * FROM Register AS R INNER JOIN Course AS C ON R.courseRegister = C.codeCourse;

ALTER TABLE Register ADD CONSTRAINT fk_course FOREIGN KEY (courseRegister) REFERENCES Course (codeCourse);
SELECT * FROM Register AS R INNER JOIN Course AS C ON R.courseRegister = C.codeCourse;

-- FOREIGN KEY INDEX
CREATE INDEX i_courseRegister ON Register (courseRegister);
SELECT * FROM Register AS R INNER JOIN Course AS C ON R.courseRegister = C.codeCourse;

-- FOREIGN KEY INDEX
DROP INDEX Register.i_courseRegister;
CREATE CLUSTERED INDEX i_courseRegister ON Register (courseRegister);
SELECT * FROM Register AS R INNER JOIN Course AS C ON R.courseRegister = C.codeCourse;