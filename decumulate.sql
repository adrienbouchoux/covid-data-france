UPDATE covid c1
SET hospital_in_out = c1.hospital - c2.hospital,
    icu_in_out = c1.icu - c2.icu,
    conv_in_out = c1.conv - c2.conv,
    long_care_in_out = c1.long_care - c2.long_care,
    other_in_out = c1.other - c2.other,
    return_home = c1.return_home_cumulated - c2.return_home_cumulated,
    deaths = c1.deaths_cumulated - c2.deaths_cumulated
FROM covid c2
WHERE
  c1.day = (c2.day + INTERVAL '1 DAY')
AND
  c1.region = c2.region
AND
  c1.age_class = c2.age_class ;

