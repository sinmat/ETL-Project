-- Create and use shootings_db
CREATE DATABASE shootings_db;
USE shootings_db;

-- Create tables for raw data to be loaded into
CREATE TABLE background_checks (
  id INT PRIMARY KEY,
  year INT,
  state TEXT,
  checks_total INT
);

CREATE TABLE mass_shootings (
  id INT PRIMARY KEY,
  year INT,
  state TEXT,
  weekday TEXT,
  fatalities INT,
  injured INT,
  total_victims INT,
  mental_health_issues TEXT,
  race TEXT,
  gender TEXT
);

CREATE TABLE firearm_laws (
  id INT PRIMARY KEY,
  year INT,
  state TEXT,
  felony_law INT,
  mental_health_law INT,
  permit_to_opencarry INT,
  permit_for_possesion INT,
  total_laws INT
);

-- Join the tables ON YEAR
SELECT mass_shootings.*, background_checks.State, background_checks.Total_Checks
FROM background_checks
RIGHT JOIN mass_shootings
ON background_checks.year = mass_shootings.year
RIGHT JOIN firearm_laws
ON mass_shootings.year = firearm_laws.year;
