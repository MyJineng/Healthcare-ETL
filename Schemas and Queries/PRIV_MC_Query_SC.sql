--change table names
ALTER TABLE "private_ins_per_enrollee"
RENAME TO private_insurance;
--call tables
SELECT * FROM medicare;
SELECT * FROM private_insurance;
SELECT * FROM medicaid;

--inner join on three tables - 2010
SELECT medicare."region/state of residence", medicare."2010", private_insurance."2010", medicaid."2010" FROM private_insurance
INNER JOIN medicare
ON medicare."region/state of residence" = private_insurance."region/state of residence"
INNER JOIN medicaid
ON medicaid."region/state of residence" = medicare."region/state of residence";

--Downloaded table to folder and named it "Comparison_2010"

--inner join on three tables - 2015
SELECT medicare."region/state of residence", medicare."2015", private_insurance."2015", medicaid."2015" FROM private_insurance
INNER JOIN medicare
ON medicare."region/state of residence" = private_insurance."region/state of residence"
INNER JOIN medicaid
ON medicaid."region/state of residence" = medicare."region/state of residence";

--Downloaded table to folder and named it "Comparison_2015"

--inner join on three tables - 2020
SELECT medicare."region/state of residence", medicare."2020", private_insurance."2020", medicaid."2020" FROM private_insurance
INNER JOIN medicare
ON medicare."region/state of residence" = private_insurance."region/state of residence"
INNER JOIN medicaid
ON medicaid."region/state of residence" = medicare."region/state of residence";

--Downloaded table to folder and named it "Comparison_2020"

---merge all comparisons on state
SELECT medicare."region/state of residence", medicare."2010", private_insurance."2010", medicaid."2010", 
		medicare."2015", private_insurance."2015", medicaid."2015",
		medicare."2020", private_insurance."2020", medicaid."2020" FROM private_insurance
INNER JOIN medicare
ON medicare."region/state of residence" = private_insurance."region/state of residence"
INNER JOIN medicaid
ON medicaid."region/state of residence" = medicare."region/state of residence";

--Downloaded table to folder and named it "Comparisons"

--Create new table for query 2015
CREATE TABLE "2015_Comparison" (
    "region/state of residence" varchar   NOT NULL,
    "2015" int   NOT NULL,
    "2015-2" int   NOT NULL,
    "2015-3" int   NOT NULL,
    CONSTRAINT "pk_2015_Comparison" PRIMARY KEY (
        "region/state of residence"
     )
);

--Create new table for query 2010
CREATE TABLE "2010_Comparison" (
    "region/state of residence" varchar   NOT NULL,
    "2010" int   NOT NULL,
    "2010-2" int   NOT NULL,
    "2010-3" int   NOT NULL,
    CONSTRAINT "pk_2010_Comparison" PRIMARY KEY (
        "region/state of residence"
     )
);

--Create new table for query 2020
CREATE TABLE "2020_Comparison" (
    "region/state of residence" varchar   NOT NULL,
    "2020" int   NOT NULL,
    "2020-2" int   NOT NULL,
    "2020-3" int   NOT NULL,
    CONSTRAINT "pk_2020_Comparison" PRIMARY KEY (
        "region/state of residence"
     )
	
);

--Create new table for full comparison
CREATE TABLE "Comparisons" (
	"region/state of residence" varchar   NOT NULL,
    "2010" int   NOT NULL,
    "2010-2" int   NOT NULL,
    "2010-3" int   NOT NULL,
	"2015" int   NOT NULL,
    "2015-2" int   NOT NULL,
    "2015-3" int   NOT NULL,	"2020" int   NOT NULL,
    "2020-2" int   NOT NULL,
    "2020-3" int   NOT NULL,
    CONSTRAINT "pk_Comparisons" PRIMARY KEY (
        "region/state of residence"
     )
);
	--Imported downloaded tables to the database from the folder then ran the tables in postgres to make sure they work.


SELECT * FROM "2010_Comparison";

SELECT * FROM "2015_Comparison";

SELECT * FROM "2020_Comparison";

SELECT * FROM "Comparisons";
