-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/NYNprB
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "private_ins_per_enrollee" (
    "region/state of residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_private_ins_per_enrollee" PRIMARY KEY (
        "region/state of residence"
     )
);

CREATE TABLE "healthcare_expenditures" (
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
    CONSTRAINT "pk_healthcare_expenditures" PRIMARY KEY (
        "date"
     )
);


CREATE TABLE "income_per_capita" (
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
	"region/state of residence" varchar   NOT NULL,
    CONSTRAINT "pk_income_per_capita" PRIMARY KEY (
        "region/state of residence"
     )
);

CREATE TABLE "physicians_and_clinics" (
    "region/state of residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_physicians_and_clinics" PRIMARY KEY (
        "region/state of residence"
     )
);

CREATE TABLE "hospitals" (
    "region/state of residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_hospitals" PRIMARY KEY (
        "region/state of residence"
     )
);

CREATE TABLE "home_healthcare" (
    "region/state of residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_home_healthcare" PRIMARY KEY (
        "region/state of residence"
     )
);

CREATE TABLE "nursing" (
    "region/state of residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_nursing" PRIMARY KEY (
        "region/state of residence"
     )
);

CREATE TABLE "medicare" (
    "region/state of residence" varchar   NOT NULL,    
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
    CONSTRAINT "pk_medicare" PRIMARY KEY (
        "region/state of residence"
     )
);

CREATE TABLE "medicaid" (
    "region/state of residence" varchar   NOT NULL,
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
    CONSTRAINT "pk_medicaid" PRIMARY KEY (
        "region/state of residence"
     )
);
