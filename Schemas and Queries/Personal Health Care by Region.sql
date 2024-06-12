CREATE TABLE "Regional Cleaned" AS
SELECT *
FROM "personal_healthcare"
WHERE "Region/state of residence" IN ('New England', 'Mideast', 'Great Lakes', 'Plains', 'Southeast', 'Southwest', 'Far West', 'Rocky Mountains');
	
ALTER TABLE "Regional Cleaned" RENAME TO "personal_health_care_regions";	

Select * From "personal_health_care_regions"
