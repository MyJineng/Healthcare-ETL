--change table names
ALTER TABLE "Medicare_Per_Enrollee"
RENAME TO Medicare;

ALTER TABLE "Private_Per_Enrollee"
RENAME TO Private_Insurance;

ALTER TABLE "Medicaid_Per_Enrollee"
RENAME TO Medicaid;

--call tables
SELECT * FROM Medicare;
SELECT * FROM Private_Insurance;
SELECT * FROM Medicaid;

--Create new table for query 2010
CREATE TABLE "2010_Comparison" (
    "region/state_of_residence" varchar   NOT NULL,
    "2010" int   NOT NULL,
    "2010-2" int   NOT NULL,
    "2010-3" int   NOT NULL,
    CONSTRAINT "pk_2010_Comparisons" PRIMARY KEY (
        "region/state_of_residence"
     )
);

--inner join on three tables - 2010
INSERT INTO "2010_Comparison"("region/state_of_residence", "2010", "2010-2", "2010-3")
SELECT Medicare."region/state_of_residence", Medicare."2010" AS "2010", Private_Insurance."2010" AS "2010-2" , Medicaid."2010" AS "2010-3"
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."region/state_of_residence" = Private_Insurance."region/state_of_residence"
INNER JOIN Medicaid ON Medicaid."region/state_of_residence" = Medicare."region/state_of_residence";

--Call table - 2010
SELECT * FROM "2010_Comparison"

--Create new table for query 2015
CREATE TABLE "2015_Comparison" (
    "region/state_of_residence" varchar   NOT NULL,
    "2015" int   NOT NULL,
    "2015-2" int   NOT NULL,
    "2015-3" int   NOT NULL,
    CONSTRAINT "pk_2015_Comparison" PRIMARY KEY (
        "region/state_of_residence"
     )
);

--inner join on three tables - 2015
INSERT INTO "2015_Comparison"("region/state_of_residence", "2015", "2015-2", "2015-3")
SELECT Medicare."region/state_of_residence", Medicare."2015" AS "2015", Private_Insurance."2015" AS "2015-2", Medicaid."2015" AS "2015-3"
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."region/state_of_residence" = Private_Insurance."region/state_of_residence"
INNER JOIN Medicaid ON Medicaid."region/state_of_residence" = Medicare."region/state_of_residence";

--Call table 2015
SELECT * FROM "2015_Comparison"

--Create new table for query 2020
CREATE TABLE "2020_Comparison" (
    "region/state_of_residence" varchar  NOT NULL,
    "2020" int  NOT NULL,
    "2020-2" int  NOT NULL,
    "2020-3" int  NOT NULL,
    CONSTRAINT "pk_2020_Comparison" PRIMARY KEY (
        "region/state_of_residence"
     )
);

--inner join on three tables - 2020
INSERT INTO "2020_Comparison"("region/state_of_residence", "2020", "2020-2", "2020-3")
SELECT Medicare."region/state_of_residence", Medicare."2020" AS "2020", Private_Insurance."2020" AS "2020-2", Medicaid."2020" AS "2020-3"
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."region/state_of_residence" = Private_Insurance."region/state_of_residence"
INNER JOIN Medicaid ON Medicaid."region/state_of_residence" = Medicare."region/state_of_residence";

---Call Table 2020
SELECT * FROM "2020_Comparison"

--Create new table for full comparison
CREATE TABLE "Comparisons" (
	"region/state_of_residence" varchar  NOT NULL,
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
        "region/state_of_residence"
     )
);

---merge all comparisons on state
INSERT INTO "Comparisons"("region/state_of_residence", "2010", "2010-2", "2010-3", "2015", "2015-2", "2015-3", "2020", "2020-2", "2020-3")
SELECT Medicare."region/state_of_residence", Medicare."2010" AS "2010", Private_Insurance."2010" AS "2010-2", Medicaid."2010" AS "2010-3", 
		Medicare."2015" AS "2015", Private_Insurance."2015" AS "2015-2", Medicaid."2015" AS "2015-3",
		Medicare."2020" AS "2020", Private_Insurance."2020" AS "2020-2", Medicaid."2020" AS "2020-3" 
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."region/state_of_residence" = Private_Insurance."region/state_of_residence"
INNER JOIN Medicaid ON Medicaid."region/state_of_residence" = Medicare."region/state_of_residence";

---Call Table Comparisons
SELECT * FROM "Comparisons"

---Create a Combined Table
CREATE TABLE "Combined_2020" (
    "region/state of residence" varchar   NOT NULL,
    "Nursing_2020" int   NOT NULL,
    "HomeHealth_2020" int   NOT NULL,
    CONSTRAINT "pk_Combined_2020" PRIMARY KEY (
        "region/state of residence"
     )
);
	
--change table names
ALTER TABLE "Nursing"
RENAME TO Nursing;

----Call table Nursing
SELECT * FROM Nursing;

--change table names
ALTER TABLE "Home_Health"
RENAME TO Home_Health;

---Call table Home Health
SELECT * FROM Home_Health;

--insert new doc into
INSERT INTO "Combined_2020"("region/state of residence", "Nursing_2020", "HomeHealth_2020")
SELECT Nursing."region/state_of_residence", Nursing."2020" AS "Nursing_2020", Home_Health."2020" AS "HomeHealth_2020"
FROM Home_Health
INNER JOIN Nursing ON Nursing."region/state_of_residence" = Home_Health."region/state_of_residence";

--Call Table Combined_2020
SELECT * FROM "Combined_2020";

ALTER TABLE "Combined_2020"
RENAME TO Combined_2020;

----Call table Nursing
SELECT * FROM Combined_2020;
