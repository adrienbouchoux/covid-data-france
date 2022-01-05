require 'net/http'
require 'json'

DATASET_URL = 'https://www.data.gouv.fr/api/1/datasets/5e7e104ace2080d9162b61d8/'
RESOURCE_ID = '08c18e08-6780-452d-9b8c-ae244ad529b3'

uri = URI(DATASET_URL)
body = Net::HTTP.get(uri) 

json = JSON.parse(body)
resource = json['resources'].find { |r| r['id'] == RESOURCE_ID }

csv_uri = URI(resource['url'])
csv = Net::HTTP.get(csv_uri)
File.write('covid_age.csv', csv)
