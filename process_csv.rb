require 'csv'

CSV.open("covid_age_preprocessed.csv", "w") do |csv|
  rows = CSV.foreach("covid_age.csv", headers: true, col_sep: ";") do |row|
    row.each do |k, v|
      row[k] = 0 if v == "NA"
      if k == 'cl_age90'
        row[k] = case v.to_i
                 when 0
                   'Total'
                 when 9
                   '<= 9'
                 when 19
                   '10 - 19'
                 when 29
                   '20 - 29'
                 when 39
                   '30 - 39'
                 when 49
                   '40 - 49'
                 when 59
                   '50 - 59'
                 when 69
                   '60 - 69'
                 when 79
                   '70 - 79'
                 when 89
                   '80 - 89'
                 when 90
                   '>= 90'
                 end
      end
    end
    csv << row
  end
end

