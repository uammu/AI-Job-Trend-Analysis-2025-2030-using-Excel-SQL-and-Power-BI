--Overall data

SELECT * FROM "AI Job";

--Count of Jobs by Industry & AI Impact

SELECT
  Industry,
  "AI Impact Level",
  COUNT(*) AS total_jobs
FROM "AI Job"
GROUP BY Industry, "AI Impact Level"
ORDER BY Industry;

--Count of Jobs by Location & AI Impact

SELECT
  Location,
  "AI Impact Level",
  COUNT(*) AS total_jobs
FROM "AI Job"
GROUP BY Location, "AI Impact Level"
ORDER BY Location;

--Job Title, Industry, Location, AI Impact Level, Automation Risk, and 
--Remote Work Ratio - High

SELECT
    "Job Title",
    "Industry",
    "Location",
    "AI Impact Level",
    "Automation Risk (%)",
    "Remote Work Ratio (%)"
FROM "AI Job"
WHERE "AI Impact Level" = 'High'
ORDER BY "Automation Risk (%)" DESC
LIMIT 50;

--Moderate 

SELECT
    "Job Title",
    "Industry",
    "Location",
    "AI Impact Level",
    "Automation Risk (%)",
    "Remote Work Ratio (%)"
FROM "AI Job"
WHERE "AI Impact Level" = 'Moderate'
ORDER BY "Automation Risk (%)" DESC
LIMIT 50;

--Low

SELECT
    "Job Title",
    "Industry",
    "Location",
    "AI Impact Level",
    "Automation Risk (%)",
    "Remote Work Ratio (%)"
FROM "AI Job"
WHERE "AI Impact Level" = 'Low'
ORDER BY "Automation Risk (%)" DESC
LIMIT 50;

