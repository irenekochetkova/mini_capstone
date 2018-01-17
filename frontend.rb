require 'unirest'

response = Unirest.get("http://localhost:3000/all_products")
all_products = response.body
puts JSON.pretty_generate(all_products)