require 'unirest'
# require 'tty-prompt'

admin = false

while true

system "clear"

puts "Welcom to the Mini Capstone! Select an option:"
puts "Make a selection:"
puts "[1] See all products"
puts "[1.1] Search by product title"
puts "[1.2] Sort by product price"


puts "[2] See one product"
puts "[2.1] See one product and associated categories"

if admin
puts "[3] Create a product"
puts "[4] Update the products:"
puts "[5] Delete products:"
puts "[11] Create a supplier:"
puts "[12] Update the supplier:"

end

puts "[6] Signup (create a user)"
puts "[7] Login (createa JSON web token)"
puts "[8] Logout (erase a Json web token)"

puts "[9] See all suppliers:"
puts "[10] See one supplier:"



puts "[13] Create an order:"
puts "[14] See all orders:"

puts "[15] See all categories:"
puts "[cart] See my shiopping cart"

puts "[q] To quit"


input_option = gets.chomp

if input_option == "1"
  response = Unirest.get("http://localhost:3000/products")
  products = response.body
  puts JSON.pretty_generate(products)

elsif input_option == "1.1"
  puts "Enter product title: "
  product_title = gets.chomp
  puts "Here are all the products matching #{product_title}: "
  response = Unirest.get("http://localhost:3000/products?search=#{product_title}")
  products = response.body
  puts JSON.pretty_generate(products)

elsif input_option == "1.2"
  response = Unirest.get("http://localhost:3000/products?price_sort=true")
  products = response.body
  puts JSON.pretty_generate(products)


elsif input_option == "2"
  puts "Enter the ID of the product to see:"
  input_id = gets.chomp
  response = Unirest.get("http://localhost:3000/products/#{input_id}")
  product = response.body
  puts JSON.pretty_generate(product)
  
  puts "Press enter to continue or type 'c' to add to cart"
    if gets.chomp == "c"
      puts "Enter quantity to add to cart: "
      quantity = gets.chomp
      params = {
        quantity: quantity,
        product_id: input_id
      }
      response = Unirest.post("http://localhost:3000/carted_products", parameters: params)
      carted_product = response.body
      puts JSON.pretty_generate(carted_product)
    end




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
 
  params["availability"] = true
  puts "Enter a supplier`s ID: "
  params["supplier_id"] = gets.chomp

  response = Unirest.post("http://localhost:3000/products", parameters: params)
  product = response.body

  if product["errors"]
    puts "Error saving your product!"
    puts product["errors"]
  else
    puts JSON.pretty_generate(product)
  end

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
  puts "Enter an availability of the product if it out-of-stock (#{product['availability']}):"
  params["availability"] = gets.chomp

  params.delete_if { |key, value| value.empty? }
  response = Unirest.patch("http://localhost:3000/products/#{input_id}", parameters: params)
  updated_product = response.body
  puts JSON.pretty_generate(updated_product)
elsif input_option == "5"
  puts "Enter the id of the product to destroy:"
  input_id = gets.chomp
  response = Unirest.delete("http://localhost:3000/products/#{input_id}")

  puts JSON.pretty_generate(response.body)
elsif input_option == "6"
  puts "Signup"
  params = {}
  puts "name:"
  params[:name] = gets.chomp
  puts "Email:"
  params[:email] = gets.chomp
  puts "Password:"
  params[:password] = gets.chomp
  puts "Confirm password"
  params[:password_confirmation] = gets.chomp
  response = Unirest.post("http://localhost:3000/users", parameters: params)
  puts JSON.pretty_generate(response.body)
elsif input_option == "7"
  puts "Login:"
  puts "Email: "
  input_email = gets.chomp
  puts "Password: "
  input_password = gets.chomp
  response = Unirest.post("http://localhost:3000/user_token", parameters: {auth: {email: input_email, password: input_password}})
  # puts JSON.pretty_generate(response.body)
  jwt = response.body["jwt"]
  p jwt

  admin = response.body["admin"]
  p admin
    # Include the jwt in the headers of any future web requests
  Unirest.default_header("Authorization", "Bearer #{jwt}") 
elsif input_option == "8"
    jwt = ""
    Unirest.clear_default_headers()
    puts "Logged out"

elsif input_option == "9"
  response = Unirest.get("http://localhost:3000/suppliers")
  suppliers = response.body
  puts JSON.pretty_generate(suppliers)

elsif input_option == "10"
  puts "Enter ID to see one a supplier"
  input_id = gets.chomp
  response = Unirest.get("http://localhost:3000/suppliers/#{input_id}")
  supplier = response.body
  puts JSON.pretty_generate(supplier)

elsif input_option == "11"
  params = {}
  puts "Enter a supplier name:"
  params[:name] = gets.chomp
  puts "Enter a supplier email"
  params[:email] = gets.chomp
  puts "Enter a supplier phone_number"
  params[:phone_number] = gets.chomp
  response = Unirest.post("http://localhost:3000/suppliers", parameters: params)
  supplier = response.body
  puts JSON.pretty_generate(supplier)

elsif input_option == "12"
  params = {}
  puts "Enter ID of a supplier to update:"
  input_id = gets.chomp
  response = Unirest.get("http://localhost:3000/suppliers/#{input_id}")
  supplier = response.body
  puts "Update a supplier`s name (#{supplier['name']}):"
  params[:name] = gets.chomp
  puts "Update a supplier`s email (#{supplier['email']}):"
  params[:email] = gets.chomp
  puts "Update a supplier`s phone_number (#{supplier['phone_number']}):"
  params[:phone_number] = gets.chomp

   params.delete_if { |key, value| value.empty? }
  response = Unirest.patch("http://localhost:3000/suppliers/#{input_id}", parameters: params)
  supplier = response.body
  puts JSON.pretty_generate(supplier)

elsif input_option == "13"
  puts "Create an order: "
  puts "Enter product id: "
  input_product_id = gets.chomp
  
  puts "Enter a quantity of the product:"
  input_quantity = gets.chomp

  response = Unirest.post("http://localhost:3000/orders", parameters: {product_id: input_product_id, quantity: input_quantity})
  order = response.body
  puts JSON.pretty_generate(order)

elsif input_option == "14"
  puts "Here are all your orders: "
    response = Unirest.get("http://localhost:3000/orders")
    orders = response.body
    puts JSON.pretty_generate(orders)

elsif input_option == "15"
    response = Unirest.get("http://localhost:3000/categories")
  categories = response.body
  puts JSON.pretty_generate(categories)



   elsif input_option == "cart"
    puts "Here are all the items in your shopping cart:"
    response = Unirest.get("http://localhost:3000/carted_products")
    carted_products = response.body
    puts JSON.pretty_generate(carted_products)
    puts "Press enter to continue or press 'o' to place the order, or press 'r' to remove a product"
    sub_option = gets.chomp
    if sub_option == "o"
      response = Unirest.post("http://localhost:3000/orders")
      order = response.body
      puts JSON.pretty_generate(order)
    elsif sub_option == "r"
      puts "Enter id of carted product to remove: "
      id = gets.chomp
      response = Unirest.delete("http://localhost:3000/carted_products/#{id}")
      puts JSON.pretty_generate(response.body)
    end 

elsif input_option == "q"
  puts "Bye!"
  break
end
puts "Press enter to continue"
gets.chomp
end











  
  