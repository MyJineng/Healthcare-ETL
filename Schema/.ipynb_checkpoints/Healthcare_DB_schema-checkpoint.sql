--Create table for nine data sets; table 16:Home Health, Table 12:Hospital, 
--Table 26:Medicaid Per Enrollee, Table 23:Medicare Per Enrollee, 
--Table 17:Nursing, Table 11:Personal Health Care, Table 13: Physician and Clinics,
--Table 29: Private Per Enrollee, and realincome (JSON)

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

--Import created CSV files to the new tables in the postgres Healthcare_DB.

