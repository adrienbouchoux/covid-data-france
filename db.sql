DROP TABLE IF EXISTS covid;
CREATE TABLE covid (
  region smallint,
  age_class varchar(255),
  day date,
  hospital integer,
  hospital_in_out integer,
  icu integer,
  icu_in_out integer,
  conv integer,
  conv_in_out integer,
  long_care  integer,
  long_care_in_out integer,
  other integer,
  other_in_out integer,
  return_home_cumulated integer,
  return_home integer,
  deaths_cumulated integer,
  deaths integer
);

CREATE INDEX ON covid (region);
CREATE INDEX ON covid (age_class);
CREATE INDEX ON covid (day);
