-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/NYNprB
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Home_Health" (
    "region/state_of_residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_Home_Health" PRIMARY KEY (
        "region/state_of_residence"
     )
);

CREATE TABLE "Hospital" (
    "region/state_of_residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_Hospital" PRIMARY KEY (
        "region/state_of_residence"
     )
);

CREATE TABLE "Medicaid_Per_Enrollee" (
    "region/state_of_residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_Medicaid_Per_Enrollee" PRIMARY KEY (
        "region/state_of_residence"
     )
);

CREATE TABLE "Medicare_Per_Enrollee" (
    "region/state_of_residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_Medicare_Per_Enrollee" PRIMARY KEY (
        "region/state_of_residence"
     )
);

CREATE TABLE "Nursing" (
    "region/state_of_residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_Nursing" PRIMARY KEY (
        "region/state_of_residence"
     )
);

CREATE TABLE "Personal_Health_Care" (
    "region/state_of_residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_Personal_Health_Care" PRIMARY KEY (
        "region/state_of_residence"
     )
);

CREATE TABLE "Physician_and_Clinics" (
    "region/state_of_residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_Physician_and_Clinics" PRIMARY KEY (
        "region/state_of_residence"
     )
);

CREATE TABLE "Private_Per_Enrollee" (
    "region/state_of_residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_Private_Per_Enrollee" PRIMARY KEY (
        "region/state_of_residence"
     )
);

CREATE TABLE "realincome" (
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
    "2021" int   NOT NULL,
   	"2022" int   NOT NULL,
	"region/state_of_residence" varchar   NOT NULL,
    CONSTRAINT "pk_realincome" PRIMARY KEY (
        "region/state_of_residence"
     )
);

SELECT * FROM realincome;

SELECT * FROM "Medicaid_Per_Enrollee";

