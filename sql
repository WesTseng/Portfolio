--Create tables to import data from csv files

CREATE TABLE passenger_traffic(
  airport VARCHAR(30) NOT NULL,
  year smallint NOT NULL,
  month smallint NOT NULL,
  dom_in integer,
  dom_out integer,
  dom_total integer,
  int_in integer,
  int_out integer,
  int_total integer,
  comb_in integer,
  comb_out integer,
  comb_total integer
)

--Import files

--Clean data to retrieve dataset from airports with both international and doemstic passenger since the year 2000

DELETE FROM passenger_traffic
WHERE airport = 'All Australian Airports'
OR year < 2000
OR int_total = 0;

--Export data for Tableau visualization
