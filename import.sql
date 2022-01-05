copy covid(
  region,
  age_class,
  day,
  hospital,
  icu,
  conv,
  long_care,
  other,
  return_home_cumulated,
  deaths_cumulated
)
FROM '/tmp/covid_age_preprocessed.csv'
DELIMITER ',';

