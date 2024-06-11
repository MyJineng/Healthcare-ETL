--change table names
ALTER TABLE "Medicare"
RENAME TO Medicare;

ALTER TABLE "Private_Ins_per_Enrollee"
RENAME TO Private_Insurance;

ALTER TABLE "Medicaid"
RENAME TO Medicaid;

--call tables
SELECT * FROM Medicare;
SELECT * FROM Private_Insurance;
SELECT * FROM Medicaid;

--inner join on three tables - 2010
SELECT Medicare."State", Medicare."2010", Private_Insurance."2010", Medicaid."2010" FROM Private_Insurance
INNER JOIN Medicare
ON Medicare."State" = Private_Insurance."State"
INNER JOIN Medicaid
ON Medicaid."State" = Medicare."State";

--inner join on three tables - 2015
SELECT Medicare."State", Medicare."2015", Private_Insurance."2015", Medicaid."2015" FROM Private_Insurance
INNER JOIN Medicare
ON Medicare."State" = Private_Insurance."State"
INNER JOIN Medicaid
ON Medicaid."State" = Medicare."State";

--inner join on three tables - 2020
SELECT Medicare."State", Medicare."2020", Private_Insurance."2020", Medicaid."2020" FROM Private_Insurance
INNER JOIN Medicare
ON Medicare."State" = Private_Insurance."State"
INNER JOIN Medicaid
ON Medicaid."State" = Medicare."State";

---merge all comparisons on state
SELECT Medicare."State", Medicare."2010", Private_Insurance."2010", Medicaid."2010", 
		Medicare."2015", Private_Insurance."2015", Medicaid."2015",
		Medicare."2020", Private_Insurance."2020", Medicaid."2020" FROM Private_Insurance
INNER JOIN Medicare
ON Medicare."State" = Private_Insurance."State"
INNER JOIN Medicaid
ON Medicaid."State" = Medicare."State";

--Create new table for query 2015
CREATE TABLE "2015_Comparison" (
    "State" varchar   NOT NULL,
    "2015" int   NOT NULL,
    "2015-2" int   NOT NULL,
    "2015-3" int   NOT NULL,
    CONSTRAINT "pk_2015_Comparison" PRIMARY KEY (
        "State"
     )
);

--Create new table for query 2010
CREATE TABLE "2010_Comparison" (
    "State" varchar   NOT NULL,
    "2010" int   NOT NULL,
    "2010-2" int   NOT NULL,
    "2010-3" int   NOT NULL,
    CONSTRAINT "pk_2010_Comparison" PRIMARY KEY (
        "State"
     )
);

--Create new table for query 2020
CREATE TABLE "2020_Comparison" (
    "State" varchar   NOT NULL,
    "2020" int   NOT NULL,
    "2020-2" int   NOT NULL,
    "2020-3" int   NOT NULL,
    CONSTRAINT "pk_2020_Comparison" PRIMARY KEY (
        "State"
     )
);

--Create new table for full comparison
CREATE TABLE "Comparisons" (
	"State" varchar   NOT NULL,
    "2010" int   NOT NULL,
    "2010-2" int   NOT NULL,
    "2010-3" int   NOT NULL,
	"2015" int   NOT NULL,
    "2015-2" int   NOT NULL,
    "2015-3" int   NOT NULL,	"2020" int   NOT NULL,
    "2020-2" int   NOT NULL,
    "2020-3" int   NOT NULL,
    CONSTRAINT "pk_Comparisons" PRIMARY KEY (
        "State"
     )
);
	


SELECT * FROM "2010_Comparison";

SELECT * FROM "2015_Comparison";

SELECT * FROM "2020_Comparison";

SELECT * FROM "Comparisons";

