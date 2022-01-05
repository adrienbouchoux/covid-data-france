ruby download.rb
ruby process_csv.rb
mv covid_age_preprocessed.csv /tmp
psql -d covid < db.sql
psql -d covid < import.sql
psql -d covid < decumulate.sql
psql -d covid < results.sql
