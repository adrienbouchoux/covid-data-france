SELECT MAX(day) AS day FROM covid;
WITH current_day AS (SELECT MAX(day) FROM covid)
SELECT
  age_class,
  SUM(hospital_in_out) AS hospital_in_out,
  ROUND(AVG(hospital),0) AS hospital_mean,
  SUM(icu_in_out) AS icu_in_out,
  ROUND(AVG(icu),0) AS icu_mean,
  SUM(conv_in_out) AS conv_in_out,
  ROUND(AVG(conv),0) AS conv_mean,
  SUM(long_care_in_out) AS long_care_in_out,
  ROUND(AVG(long_care),0) AS long_care_mean,
  SUM(other_in_out) AS other_in_out,
  ROUND(AVG(other),0) AS other_mean,
  SUM(return_home) AS return_home,
  SUM(deaths) AS deaths
FROM 
(
SELECT
  age_class,
  day,
  SUM(hospital_in_out) AS hospital_in_out,
  SUM(hospital) AS hospital,
  SUM(icu_in_out) AS icu_in_out,
  SUM(icu) AS icu,
  SUM(conv_in_out) AS conv_in_out,
  SUM(conv) AS conv,
  SUM(long_care_in_out) AS long_care_in_out,
  SUM(long_care) AS long_care,
  SUM(other_in_out) AS other_in_out,
  SUM(other) AS other,
  SUM(return_home) AS return_home,
  SUM(deaths) AS deaths
FROM covid
WHERE day = (table current_day)
GROUP BY age_class, day
) AS covid_all_regions
WHERE day = (table current_day)
GROUP BY age_class
ORDER BY age_class ASC;

