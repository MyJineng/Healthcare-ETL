Create Table "Income_per_capita" (
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
	"2021" int NOT NULL,
	"2022" int NOT NULL,	

CONSTRAINT "pk_Income_per_capita" PRIMARY KEY (
        "Region/state of residence"
     )
);

ALTER TABLE "Income_per_capita"
DROP COLUMN "2021",
DROP COLUMN "2022"; 


CREATE TABLE "Regional_averages_income" AS
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
                WHEN "Region/state of residence" IN ('Alabama','Arkansas', 'Florida', 'Georgia', 'Kentucky', 'Mississippi','Louisiana', 'South Carolina','North Carolina', 'Tennessee','West Virginia') THEN 'Southeast'
                WHEN "Region/state of residence" IN ('Arizona', 'Oklahoma','New Mexico', 'Texas') THEN 'Southwest'
                WHEN "Region/state of residence" IN ('Alaska', 'California','Hawaii', 'Nevada','Oregon', 'Washington') THEN 'Far West'
                WHEN "Region/state of residence" IN ('Alaska', 'Idaho', 'Montana', 'Oregon', 'Washington', 'Wyoming') THEN 'Northwest'
                WHEN "Region/state of residence" IN ('Illinois', 'Indiana', 'Michigan', 'Ohio', 'Wisconsin') THEN 'Great Lakes'
                WHEN "Region/state of residence" IN ('Iowa', 'Kansas', 'Minnesota', 'Missouri', 'Nebraska', 'North Dakota', 'South Dakota') THEN 'Plains'
                WHEN "Region/state of residence" IN ('Connecticut', 'Maine', 'Massachusetts', 'New Hampshire', 'Rhode Island', 'Vermont') THEN 'New England'
                WHEN "Region/state of residence" IN ('Delaware', 'Maryland', 'New Jersey', 'New York', 'Pennsylvania') THEN 'Mideast'
            END AS region,
            "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020"
        FROM 
            "Income_per_capita"
    ) AS subquery
WHERE 
    region IS NOT NULL
GROUP BY 
    region
ORDER BY 
    region;
	
ALTER TABLE "Regional_averages_income"
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

UPDATE "Regional_averages_income"
SET region = CONCAT(region, ' Average Income');

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2008 TO "2008";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2009 TO "2009";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2010 TO "2010";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2011 TO "2011";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2012 TO "2012";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2013 TO "2013";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2014 TO "2014";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2015 TO "2015";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2016 TO "2016";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2017 TO "2017";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2018 TO "2018";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2019 TO "2019";

ALTER TABLE "Regional_averages_income"
RENAME COLUMN avg_2020 TO "2020";

Select * From "Regional_averages_income";
Select * From "Income_per_capita";

