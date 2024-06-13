--Schema for original extracted data sets
CREATE TABLE "Private_Ins_per_Enrollee" (
    "State" varchar   NOT NULL,
    "2008" int   NOT NULL,
    "2009" int   NOT NULL,
    "2010" int   NOT NULL,
    "2011" int   NOT NULL,
    "2012" int   NOT NULL,
    "2013" int   NOT NULL,
    "2014" int   NOT NULL,
    "2015" int   NOT NULL,
    "2016" int   NOT NULL,
    "2017" int   NOT NULL,
    "2018" int   NOT NULL,
    "2019" int   NOT NULL,
    "2020" int   NOT NULL,
    CONSTRAINT "pk_Private_Ins_per_Enrollee" PRIMARY KEY (
        "State"
     )
);

CREATE TABLE "Medicare" (
    "State" varchar   NOT NULL,
    "2008" int   NOT NULL,
    "2009" int   NOT NULL,
    "2010" int   NOT NULL,
    "2011" int   NOT NULL,
    "2012" int   NOT NULL,
    "2013" int   NOT NULL,
    "2014" int   NOT NULL,
    "2015" int   NOT NULL,
    "2016" int   NOT NULL,
    "2017" int   NOT NULL,
    "2018" int   NOT NULL,
    "2019" int   NOT NULL,
    "2020" int   NOT NULL,
    CONSTRAINT "pk_Medicare" PRIMARY KEY (
        "State"
     )
);

CREATE TABLE "Medicaid" (
    "State" varchar   NOT NULL,
    "2008" int   NOT NULL,
    "2009" int   NOT NULL,
    "2010" int   NOT NULL,
    "2011" int   NOT NULL,
    "2012" int   NOT NULL,
    "2013" int   NOT NULL,
    "2014" int   NOT NULL,
    "2015" int   NOT NULL,
    "2016" int   NOT NULL,
    "2017" int   NOT NULL,
    "2018" int   NOT NULL,
    "2019" int   NOT NULL,
    "2020" int   NOT NULL,
    CONSTRAINT "pk_Medicaid" PRIMARY KEY (
        "State"
	)
);

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

--Create new table for query 2010
CREATE TABLE "2010_Comparison" (
    "State" varchar   NOT NULL,
    "2010" int   NOT NULL,
    "2010-2" int   NOT NULL,
    "2010-3" int   NOT NULL,
    CONSTRAINT "pk_2010_Comparisons" PRIMARY KEY (
        "State"
     )
);

--inner join on three tables - 2010
INSERT INTO "2010_Comparison"("State", "2010", "2010-2", "2010-3")
SELECT Medicare."State", Medicare."2010" AS "2010", Private_Insurance."2010" AS "2010-2" , Medicaid."2010" AS "2010-3"
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."State" = Private_Insurance."State"
INNER JOIN Medicaid ON Medicaid."State" = Medicare."State";

--Call table - 2010
SELECT * FROM "2010_Comparison"

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

--inner join on three tables - 2015
INSERT INTO "2015_Comparison"("State", "2015", "2015-2", "2015-3")
SELECT Medicare."State", Medicare."2015" AS "2015", Private_Insurance."2015" AS "2015-2", Medicaid."2015" AS "2015-3"
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."State" = Private_Insurance."State"
INNER JOIN Medicaid ON Medicaid."State" = Medicare."State";

--Call table 2015
SELECT * FROM "2015_Comparison"

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

--inner join on three tables - 2020
INSERT INTO "2020_Comparison"("State", "2020", "2020-2", "2020-3")
SELECT Medicare."State", Medicare."2020" AS "2020", Private_Insurance."2020" AS "2020-2", Medicaid."2020" AS "2020-3"
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."State" = Private_Insurance."State"
INNER JOIN Medicaid ON Medicaid."State" = Medicare."State";

---Call Table 2020
SELECT * FROM "2020_Comparison"

--Create new table for full comparison
CREATE TABLE "Comparisons" (
	"State" varchar   NOT NULL,
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
        "State"
     )
);

---merge all comparisons on state
INSERT INTO "Comparisons"("State", "2010", "2010-2", "2010-3", "2015", "2015-2", "2015-3", "2020", "2020-2", "2020-3")
SELECT Medicare."State", Medicare."2010" AS "2010", Private_Insurance."2010" AS "2010-2", Medicaid."2010" AS "2010-3", 
		Medicare."2015" AS "2015", Private_Insurance."2015" AS "2015-2", Medicaid."2015" AS "2015-3",
		Medicare."2020" AS "2020", Private_Insurance."2020" AS "2020-2", Medicaid."2020" AS "2020-3" 
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."State" = Private_Insurance."State"
INNER JOIN Medicaid ON Medicaid."State" = Medicare."State";

---Call Table Comparisons
SELECT * FROM "Comparisons"

