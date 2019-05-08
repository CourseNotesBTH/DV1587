SELECT * FROM Register AS R
  INNER JOIN Course AS C ON R.courseRegister = C.codeCourse
    INNER JOIN Program AS P ON R.progRegister = P.kodProgram
      WHERE progRegister IN ('TSWEH', 'TSWEK');

SELECT * FROM Register;
SELECT * FROM Course;
SELECT * FROM Program;

ALTER TABLE Course ADD CONSTRAINT pk_codeCourse PRIMARY KEY (codeCourse);
ALTER TABLE Program ADD CONSTRAINT pk_kodProgram PRIMARY KEY (kodProgram);

ALTER TABLE Register ADD CONSTRAINT fk_course FOREIGN KEY (courseRegister) REFERENCES Course (codeCourse);
ALTER TABLE Register ADD CONSTRAINT fk_program FOREIGN KEY (progRegister) REFERENCES Program (kodProgram);

DROP INDEX i_progRegister ON Register;
CREATE CLUSTERED INDEX i_progRegister ON Register (progRegister);