﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/NYNprB
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


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

CREATE TABLE "Healthcare_expenditures" (
    "date" varchar   NOT NULL,
    "AL" int   NOT NULL,
    "AK" int   NOT NULL,
    "AZ" int   NOT NULL,
    "AR" int   NOT NULL,
    "CA" int   NOT NULL,
    "CO" int   NOT NULL,
    "CT" int   NOT NULL,
    "DE" int   NOT NULL,
    "FL" int   NOT NULL,
    "GA" int   NOT NULL,
    "HI" int   NOT NULL,
    "ID" int   NOT NULL,
    "IL" int   NOT NULL,
    "IN" int   NOT NULL,
    "IA" int   NOT NULL,
    "KS" int   NOT NULL,
    "KY" int   NOT NULL,
    "LA" int   NOT NULL,
    "ME" int   NOT NULL,
    "MD" int   NOT NULL,
    "MA" int   NOT NULL,
    "MI" int   NOT NULL,
    "MN" int   NOT NULL,
    "MS" int   NOT NULL,
    "MO" int   NOT NULL,
    "MT" int   NOT NULL,
    "NE" int   NOT NULL,
    "NV" int   NOT NULL,
    "NH" int   NOT NULL,
    "NJ" int   NOT NULL,
    "NM" int   NOT NULL,
    "NY" int   NOT NULL,
    "NC" int   NOT NULL,
    "ND" int   NOT NULL,
    "OH" int   NOT NULL,
    "OK" int   NOT NULL,
    "OR" int   NOT NULL,
    "PA" int   NOT NULL,
    "RI" int   NOT NULL,
    "SC" int   NOT NULL,
    "SD" int   NOT NULL,
    "TN" int   NOT NULL,
    "TX" int   NOT NULL,
    "UT" int   NOT NULL,
    "VT" int   NOT NULL,
    "VA" int   NOT NULL,
    "WA" int   NOT NULL,
    "WI" int   NOT NULL,
    "WV" int   NOT NULL,
    "WY" int   NOT NULL,
    CONSTRAINT "pk_Healthcare_expenditures" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "Income_per_capita" (
    "date" VARCHAR   NOT NULL,
    "AL" int   NOT NULL,
    "AK" int   NOT NULL,
    "AZ" int   NOT NULL,
    "AR" int   NOT NULL,
    "CA" int   NOT NULL,
    "CO" int   NOT NULL,
    "CT" int   NOT NULL,
    "DE" int   NOT NULL,
    "FL" int   NOT NULL,
    "GA" int   NOT NULL,
    "HI" int   NOT NULL,
    "ID" int   NOT NULL,
    "IL" int   NOT NULL,
    "IN" int   NOT NULL,
    "IA" int   NOT NULL,
    "KS" int   NOT NULL,
    "KY" int   NOT NULL,
    "LA" int   NOT NULL,
    "ME" int   NOT NULL,
    "MD" int   NOT NULL,
    "MA" int   NOT NULL,
    "MI" int   NOT NULL,
    "MN" int   NOT NULL,
    "MS" int   NOT NULL,
    "MO" int   NOT NULL,
    "MT" int   NOT NULL,
    "NE" int   NOT NULL,
    "NV" int   NOT NULL,
    "NH" int   NOT NULL,
    "NJ" int   NOT NULL,
    "NM" int   NOT NULL,
    "NY" int   NOT NULL,
    "NC" int   NOT NULL,
    "ND" int   NOT NULL,
    "OH" int   NOT NULL,
    "OK" int   NOT NULL,
    "OR" int   NOT NULL,
    "PA" int   NOT NULL,
    "RI" int   NOT NULL,
    "SC" int   NOT NULL,
    "SD" int   NOT NULL,
    "TN" int   NOT NULL,
    "TX" int   NOT NULL,
    "UT" int   NOT NULL,
    "VT" int   NOT NULL,
    "VA" int   NOT NULL,
    "WA" int   NOT NULL,
    "WI" int   NOT NULL,
    "WV" int   NOT NULL,
    "WY" int   NOT NULL,
    CONSTRAINT "pk_Income_per_capita" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "Personal_Healthcare" (
    "Region/State" varchar   NOT NULL,
    "2008" float   NOT NULL,
    "2009" float   NOT NULL,
    "2010" float   NOT NULL,
    "2011" float   NOT NULL,
    "2012" float   NOT NULL,
    "2013" float   NOT NULL,
    "2014" float   NOT NULL,
    "2015" float   NOT NULL,
    "2016" float   NOT NULL,
    "2017" float   NOT NULL,
    "2018" float   NOT NULL,
    "2019" float   NOT NULL,
    "2020" float   NOT NULL,
    CONSTRAINT "pk_Personal_Healthcare" PRIMARY KEY (
        "Region/State"
     )
);

CREATE TABLE "Physicians_and_Clinics" (
    "Region/State" varchar   NOT NULL,
    "2008" float   NOT NULL,
    "2009" float   NOT NULL,
    "2010" float   NOT NULL,
    "2011" float   NOT NULL,
    "2012" float   NOT NULL,
    "2013" float   NOT NULL,
    "2014" float   NOT NULL,
    "2015" float   NOT NULL,
    "2016" float   NOT NULL,
    "2017" float   NOT NULL,
    "2018" float   NOT NULL,
    "2019" float   NOT NULL,
    "2020" float   NOT NULL,
    CONSTRAINT "pk_Physicians_and_Clinics" PRIMARY KEY (
        "Region/State"
     )
);

CREATE TABLE "Hospitals" (
    "Region/State" varchar   NOT NULL,
    "2008" float   NOT NULL,
    "2009" float   NOT NULL,
    "2010" float   NOT NULL,
    "2011" float   NOT NULL,
    "2012" float   NOT NULL,
    "2013" float   NOT NULL,
    "2014" float   NOT NULL,
    "2015" float   NOT NULL,
    "2016" float   NOT NULL,
    "2017" float   NOT NULL,
    "2018" float   NOT NULL,
    "2019" float   NOT NULL,
    "2020" float   NOT NULL,
    CONSTRAINT "pk_Hospitals" PRIMARY KEY (
        "Region/State"
     )
);

CREATE TABLE "Home_Healthcare" (
    "Region/State" varchar   NOT NULL,
    "2008" float   NOT NULL,
    "2009" float   NOT NULL,
    "2010" float   NOT NULL,
    "2011" float   NOT NULL,
    "2012" float   NOT NULL,
    "2013" float   NOT NULL,
    "2014" float   NOT NULL,
    "2015" float   NOT NULL,
    "2016" float   NOT NULL,
    "2017" float   NOT NULL,
    "2018" float   NOT NULL,
    "2019" float   NOT NULL,
    "2020" float   NOT NULL,
    CONSTRAINT "pk_Home_Healthcare" PRIMARY KEY (
        "Region/State"
     )
);

CREATE TABLE "Nursing" (
    "Region/State" varchar   NOT NULL,
    "2008" float   NOT NULL,
    "2009" float   NOT NULL,
    "2010" float   NOT NULL,
    "2011" float   NOT NULL,
    "2012" float   NOT NULL,
    "2013" float   NOT NULL,
    "2014" float   NOT NULL,
    "2015" float   NOT NULL,
    "2016" float   NOT NULL,
    "2017" float   NOT NULL,
    "2018" float   NOT NULL,
    "2019" float   NOT NULL,
    "2020" float   NOT NULL,
    CONSTRAINT "pk_Nursing" PRIMARY KEY (
        "Region/State"
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

ALTER TABLE "Income_per_capita" ADD CONSTRAINT "fk_Income_per_capita_date" FOREIGN KEY("date")
REFERENCES "Healthcare_expenditures" ("date");
