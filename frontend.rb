require 'unirest'

# response = Unirest.get("http://localhost:3000/all_products")
# all_products = response.body
# puts JSON.pretty_generate(all_products)

system "clear"

puts "Welcom to the Mini Capstone! Select an option:"
puts "[1] See all products"
puts "[2] See one product"
puts "[3] Create a product"
puts "[4] Update the products:"
puts "[5] Delete products:"

input_option = gets.chomp

if input_option == "1"
  response = Unirest.get("http://localhost:3000/products")
  products = response.body
  puts JSON.pretty_generate(products)
elsif input_option == "2"
  puts "Enter the ID of the product to see:"
  input_id = gets.chomp
  response = Unirest.get("http://localhost:3000/products/#{input_id}")
  product = response.body
  puts JSON.pretty_generate(product)
elsif input_option == "3"
  params = {}
  puts "Enter a title of the product:"
  params["title"] = gets.chomp
  puts "Enter a price of the product:"
  params["price"] = gets.chomp
  puts "Enter an picture of the product:"
  params["image_url"] = gets.chomp
  puts "Enter a descriptions of the product:"
  params["description"] = gets.chomp
  response = Unirest.post("http://localhost:3000/products", parameters: params)
  product = response.body
  puts JSON.pretty_generate(product)
elsif input_option == "4"
  params = {}
  puts "Enter the ID of the product to update:"
  input_id = gets.chomp
  response = Unirest.get("http://localhost:3000/products/#{input_id}")
  product = response.body
  puts "Enter the title of the product (#{product['title']}): "
  params["title"] = gets.chomp
  puts "Enter a price of the product (#{product["price"]}):"
  params["price"] = gets.chomp
  puts "Enter a picture of the product (#{product['url_image']}):"
  params["url_image"] = gets.chomp
  puts "Enter a description of the product (#{product['description']}):"
  params["description"] = gets.chomp
  params.delete_if { |key, value| value.empty? }
  response = Unirest.patch("http://localhost:3000/products/#{input_id}", parameters: params)
  updated_product = response.body
  puts JSON.pretty_generate(updated_product)
elsif input_option == "5"
  puts "Enter the id of the product to destroy:"
  input_id = gets.chomp
  response = Unirest.delete("http://localhost:3000/products/#{input_id}")

  puts JSON.pretty_generate(response.body)
end




























  
  