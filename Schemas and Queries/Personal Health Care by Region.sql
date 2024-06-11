Create Table "Personal_Health_Care_Regions" (
	"Region/state of residence" VARCHAR NOT NULL,
	"2008" int NOT NULL,
	"2009" int NOT NULL,
	"2010" int NOT NULL,
	"2011" int NOT NULL,
	"2012" int NOT NULL,
	"2013" int NOT NULL,
	"2014" int NOT NULL,
	"2015" int NOT NULL,
	"2016" int NOT NULL,
	"2017" int NOT NULL,
	"2018" int NOT NULL,
	"2019" int NOT NULL,
	"2020" int NOT NULL,

CONSTRAINT "pk_personal_healthcare" PRIMARY KEY (
        "Region/state of residence"
     )
); 

CREATE TABLE "Regional Cleaned" AS
SELECT *
FROM "Personal_Health_Care_Regions"
WHERE "Region/state of residence" IN ('New England', 'Mideast', 'Great Lakes', 'Plains', 'Southeast', 'Southwest', 'Far West', 'Rocky Mountains');
	
DROP TABLE "Personal_Health_Care_Regions";

ALTER TABLE "Regional Cleaned" RENAME TO "Personal_Health_Care_Regions";	

Select * From "Personal_Health_Care_Regions"