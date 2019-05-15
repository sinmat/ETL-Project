-- Create and use shootings_db
CREATE DATABASE shootings_db;
USE shootings_db;

DROP TABLE background_checks;
DROP TABLE mass_shootings;
DROP TABLE firearm_laws;

-- Create tables for raw data to be loaded into
CREATE TABLE background_checks (
  year INT,
  State TEXT,
  Total_Checks INT
);

CREATE TABLE mass_shootings (
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
  year INT,
  state TEXT,
  felony_law INT,
  mental_health_law INT,
  Need_permit_to_opencarry INT,
  Need_permit_for_possesion INT,
  total_laws INT
);

