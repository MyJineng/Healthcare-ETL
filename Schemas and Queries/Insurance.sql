ALTER TABLE "private_ins_per_enrollee"
RENAME TO Private_Insurance;

--call tables
SELECT * FROM medicare;
SELECT * FROM Private_Insurance;
SELECT * FROM medicaid;

--Create new table for query 2010
CREATE TABLE "2010_Comparison" (
    "region/state of residence" varchar   NOT NULL,
    "2010" int   NOT NULL,
    "2010-2" int   NOT NULL,
    "2010-3" int   NOT NULL,
    CONSTRAINT "pk_2010_Comparisons" PRIMARY KEY (
        "region/state of residence"
     )
);

--inner join on three tables - 2010
INSERT INTO "2010_Comparison"("region/state of residence", "2010", "2010-2", "2010-3")
SELECT medicare."region/state of residence", medicare."2010" AS "2010", Private_Insurance."2010" AS "2010-2" , medicaid."2010" AS "2010-3"
FROM Private_Insurance
INNER JOIN medicare ON medicare."region/state of residence" = Private_Insurance."region/state of residence"
INNER JOIN medicaid ON medicaid."region/state of residence" = medicare."region/state of residence";

--Call table - 2010
SELECT * FROM "2010_Comparison"

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

--inner join on three tables - 2015
INSERT INTO "2015_Comparison"("region/state of residence", "2015", "2015-2", "2015-3")
SELECT medicare."region/state of residence", medicare."2015" AS "2015", Private_Insurance."2015" AS "2015-2", medicaid."2015" AS "2015-3"
FROM Private_Insurance
INNER JOIN medicare ON medicare."region/state of residence" = Private_Insurance."region/state of residence"
INNER JOIN medicaid ON medicaid."region/state of residence" = medicare."region/state of residence";

--Call table 2015
SELECT * FROM "2015_Comparison"

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

--inner join on three tables - 2020
INSERT INTO "2020_Comparison"("region/state of residence", "2020", "2020-2", "2020-3")
SELECT medicare."region/state of residence", medicare."2020" AS "2020", Private_Insurance."2020" AS "2020-2", medicaid."2020" AS "2020-3"
FROM Private_Insurance
INNER JOIN medicare ON medicare."region/state of residence" = Private_Insurance."region/state of residence"
INNER JOIN medicaid ON medicaid."region/state of residence" = medicare."region/state of residence";

---Call Table 2020
SELECT * FROM "2020_Comparison"

--Create new table for full comparison
CREATE TABLE "Comparisons" (
	"region/state of residence" varchar   NOT NULL,
    "2010" int   NOT NULL,
    "2010-2" int   NOT NULL,
    "2010-3" int   NOT NULL,
	"2015" int   NOT NULL,
    "2015-2" int   NOT NULL,
    "2015-3" int   NOT NULL,	
	"2020" int   NOT NULL,
    "2020-2" int   NOT NULL,
    "2020-3" int   NOT NULL,
    CONSTRAINT "pk_Comparisons" PRIMARY KEY (
        "region/state of residence"
     )
);

---merge all comparisons on region/state of residence
INSERT INTO "Comparisons"("region/state of residence", "2010", "2010-2", "2010-3", "2015", "2015-2", "2015-3", "2020", "2020-2", "2020-3")
SELECT medicare."region/state of residence", medicare."2010" AS "2010", Private_Insurance."2010" AS "2010-2", medicaid."2010" AS "2010-3", 
		medicare."2015" AS "2015", Private_Insurance."2015" AS "2015-2", medicaid."2015" AS "2015-3",
		medicare."2020" AS "2020", Private_Insurance."2020" AS "2020-2", medicaid."2020" AS "2020-3" 
FROM Private_Insurance
INNER JOIN medicare ON medicare."region/state of residence" = Private_Insurance."region/state of residence"
INNER JOIN medicaid ON medicaid."region/state of residence" = medicare."region/state of residence";

---Call Table Comparisons
SELECT * FROM "Comparisons"
