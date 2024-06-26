--Alter realincome table
ALTER TABLE "realincome"
DROP COLUMN "2021",
DROP COLUMN "2022";

--create regional averages income table for analysis from realincome table
CREATE TABLE "regional_averages_income" AS
SELECT 
    region,
    AVG("2008") AS avg_2008,
    AVG("2009") AS avg_2009,
    AVG("2010") AS avg_2010,
    AVG("2011") AS avg_2011,
    AVG("2012") AS avg_2012,
    AVG("2013") AS avg_2013,
    AVG("2014") AS avg_2014,
    AVG("2015") AS avg_2015,
    AVG("2016") AS avg_2016,
    AVG("2017") AS avg_2017,
    AVG("2018") AS avg_2018,
    AVG("2019") AS avg_2019,
    AVG("2020") AS avg_2020
FROM 
    (
        SELECT 
            CASE
                WHEN "region/state_of_residence" IN ('Alabama','Arkansas', 'Florida', 'Georgia', 'Kentucky', 'Mississippi','Louisiana', 'South Carolina','North Carolina', 'Tennessee','West Virginia') THEN 'Southeast'
                WHEN "region/state_of_residence" IN ('Arizona', 'Oklahoma','New Mexico', 'Texas') THEN 'Southwest'
                WHEN "region/state_of_residence" IN ('Alaska', 'California','Hawaii', 'Nevada','Oregon', 'Washington') THEN 'Far West'
                WHEN "region/state_of_residence" IN ('Colorado','Idaho', 'Montana', 'Oregon', 'Washington', 'Wyoming') THEN 'Rocky Mountains'
                WHEN "region/state_of_residence" IN ('Illinois', 'Indiana', 'Michigan', 'Ohio', 'Wisconsin') THEN 'Great Lakes'
                WHEN "region/state_of_residence" IN ('Iowa', 'Kansas', 'Minnesota', 'Missouri', 'Nebraska', 'North Dakota', 'South Dakota') THEN 'Plains'
                WHEN "region/state_of_residence" IN ('Connecticut', 'Maine', 'Massachusetts', 'New Hampshire', 'Rhode Island', 'Vermont') THEN 'New England'
                WHEN "region/state_of_residence" IN ('Delaware', 'Maryland', 'New Jersey', 'New York', 'Pennsylvania') THEN 'Mideast'
            END AS region,
            "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020"
        FROM 
            "realincome"
    ) AS subquery
WHERE 
    region IS NOT NULL
GROUP BY 
    region
ORDER BY 
    region;
	
ALTER TABLE "regional_averages_income"
ALTER COLUMN avg_2008 Type INT,
ALTER COLUMN avg_2009 Type INT,
ALTER COLUMN avg_2010 Type INT,
ALTER COLUMN avg_2011 Type INT,
ALTER COLUMN avg_2012 Type INT,
ALTER COLUMN avg_2013 Type INT,
ALTER COLUMN avg_2014 Type INT,
ALTER COLUMN avg_2015 Type INT,
ALTER COLUMN avg_2016 Type INT,
ALTER COLUMN avg_2017 Type INT,
ALTER COLUMN avg_2018 Type INT,
ALTER COLUMN avg_2019 Type INT,
ALTER COLUMN avg_2020 Type INT;

UPDATE "regional_averages_income"
SET region = CONCAT(region, ' Average Income');

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2008 TO "2008";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2009 TO "2009";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2010 TO "2010";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2011 TO "2011";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2012 TO "2012";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2013 TO "2013";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2014 TO "2014";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2015 TO "2015";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2016 TO "2016";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2017 TO "2017";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2018 TO "2018";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2019 TO "2019";

ALTER TABLE "regional_averages_income"
RENAME COLUMN avg_2020 TO "2020";

Select * From "regional_averages_income";
Select * From "realincome";

--create Personal Health Care by Region from Personal Health Care For analysis
CREATE TABLE "Regional Cleaned" AS
SELECT *
FROM "Personal_Health_Care"
WHERE "region/state_of_residence" IN ('New England', 'Mideast', 'Great Lakes', 'Plains', 'Southeast', 'Southwest', 'Far West', 'Rocky Mountains');
	
ALTER TABLE "Regional Cleaned" RENAME TO "personal_health_care_regions";	

Select * From "personal_health_care_regions";

--Create tables 2010, 2015, 2020 comparisons for analsysis from Medicare, Medicaid and Private (per enrollee)
--to show trend changes over 5 year time spans for a 10 year period.	
--change table names
ALTER TABLE "Medicare_Per_Enrollee"
RENAME TO Medicare;

ALTER TABLE "Private_Per_Enrollee"
RENAME TO Private_Insurance;

ALTER TABLE "Medicaid_Per_Enrollee"
RENAME TO Medicaid;

--Create new table for query 2010
CREATE TABLE "2010_Comparison" (
    "region/state_of_residence" varchar   NOT NULL,
    "Medicare_2010" int   NOT NULL,
    "PrivateIns_2010" int   NOT NULL,
    "Medicaid_2010" int   NOT NULL,
    CONSTRAINT "pk_2010_Comparisons" PRIMARY KEY (
        "region/state_of_residence"
     )
);

--Create new table for query 2015
CREATE TABLE "2015_Comparison" (
    "region/state_of_residence" varchar   NOT NULL,
    "Medicare_2015" int   NOT NULL,
    "PrivateIns_2015" int   NOT NULL,
    "Medicaid_2015" int   NOT NULL,
    CONSTRAINT "pk_2015_Comparison" PRIMARY KEY (
        "region/state_of_residence"
     )
);

--Create new table for query 2020
CREATE TABLE "2020_Comparison" (
    "region/state_of_residence" varchar  NOT NULL,
    "Medicare_2020" int  NOT NULL,
    "PrivateIns_2020" int  NOT NULL,
    "Medicaid_2020" int  NOT NULL,
    CONSTRAINT "pk_2020_Comparison" PRIMARY KEY (
        "region/state_of_residence"
     )
);

--inner join on three tables - 2010
INSERT INTO "2010_Comparison"("region/state_of_residence", "Medicare_2010", "PrivateIns_2010", "Medicaid_2010")
SELECT Medicare."region/state_of_residence", Medicare."2010" AS "Medicare_2010", Private_Insurance."2010" AS "PrivateIns_2010" , Medicaid."2010" AS "Medicaid_2010"
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."region/state_of_residence" = Private_Insurance."region/state_of_residence"
INNER JOIN Medicaid ON Medicaid."region/state_of_residence" = Medicare."region/state_of_residence";

--inner join on three tables - 2015
INSERT INTO "2015_Comparison"("region/state_of_residence", "Medicare_2015", "PrivateIns_2015", "Medicaid_2015")
SELECT Medicare."region/state_of_residence", Medicare."2015" AS "Medicare_2015", Private_Insurance."2015" AS "PrivateIns_2015", Medicaid."2015" AS "Medicaid_2015"
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."region/state_of_residence" = Private_Insurance."region/state_of_residence"
INNER JOIN Medicaid ON Medicaid."region/state_of_residence" = Medicare."region/state_of_residence";

--inner join on three tables - 2020
INSERT INTO "2020_Comparison"("region/state_of_residence", "Medicare_2020", "PrivateIns_2020", "Medicaid_2020")
SELECT Medicare."region/state_of_residence", Medicare."2020" AS "Medicare_2020", Private_Insurance."2020" AS "PrivateIns_2020", Medicaid."2020" AS "Medicaid_2020"
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."region/state_of_residence" = Private_Insurance."region/state_of_residence"
INNER JOIN Medicaid ON Medicaid."region/state_of_residence" = Medicare."region/state_of_residence";

--Create new table for full comparison
CREATE TABLE "Comparisons" (
	"region/state_of_residence" varchar  NOT NULL,
    "Medicare_2010" int   NOT NULL,
    "PrivateIns_2010" int   NOT NULL,
    "Medicaid_2010" int   NOT NULL,
	"Medicare_2015" int   NOT NULL,
    "PrivateIns_2015" int   NOT NULL,
    "Medicaid_2015" int   NOT NULL,
	"Medicare_2020" int  NOT NULL,
    "PrivateIns_2020" int  NOT NULL,
    "Medicaid_2020" int  NOT NULL,
    CONSTRAINT "pk_Comparisons" PRIMARY KEY (
        "region/state_of_residence"
     )
);

---merge all comparisons on state
INSERT INTO "Comparisons"("region/state_of_residence", "Medicare_2010", "PrivateIns_2010", "Medicaid_2010", "Medicare_2015", "PrivateIns_2015", "Medicaid_2015", "Medicare_2020", "PrivateIns_2020", "Medicaid_2020")
SELECT Medicare."region/state_of_residence", Medicare."2010" AS "Medicare_2010", Private_Insurance."2010" AS "PrivateIns_2010", Medicaid."2010" AS "Medicaid_2010", 
		Medicare."2015" AS "Mediccare_2015", Private_Insurance."2015" AS "PrivateIns_2015", Medicaid."2015" AS "Medicaid_2015",
		Medicare."2020" AS "Medicare_2020", Private_Insurance."2020" AS "PrivateIns_2020", Medicaid."2020" AS "Medicaid_2020" 
FROM Private_Insurance
INNER JOIN Medicare ON Medicare."region/state_of_residence" = Private_Insurance."region/state_of_residence"
INNER JOIN Medicaid ON Medicaid."region/state_of_residence" = Medicare."region/state_of_residence";


--Delete regions and country from table so we see only states. 
DELETE FROM "Comparisons"
WHERE "region/state_of_residence" = 'United States'; 

DELETE FROM "Comparisons"
WHERE "region/state_of_residence" = 'Mideast'; 

DELETE FROM "Comparisons"
WHERE "region/state_of_residence" = 'Great Lakes';

DELETE FROM "Comparisons"
WHERE "region/state_of_residence" = 'Plains';

DELETE FROM "Comparisons"
WHERE "region/state_of_residence" = 'Southeast';

DELETE FROM "Comparisons"
WHERE "region/state_of_residence" = 'Rocky Mountains';

DELETE FROM "Comparisons"
WHERE "region/state_of_residence" = 'Far West';

--order by ascending order
SELECT * FROM "Comparisons"
ORDER BY "region/state_of_residence" ASC;
	

--Create Combined 2020 for analysis of Nursing and Home Health during the year 2020
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

--change table names
ALTER TABLE "Home_Health"
RENAME TO Home_Health;

--insert new doc into
INSERT INTO "Combined_2020"("region/state of residence", "Nursing_2020", "HomeHealth_2020")
SELECT Nursing."region/state_of_residence", Nursing."2020" AS "Nursing_2020", Home_Health."2020" AS "HomeHealth_2020"
FROM Home_Health
INNER JOIN Nursing ON Nursing."region/state_of_residence" = Home_Health."region/state_of_residence";

ALTER TABLE "Combined_2020"
RENAME TO Combined_2020;

