# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product_1 = Product.new(title: "Apple", price: "3 $", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiK-4XakN7YAhWmjlQKHc_ICQMQjRwIBw&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Fapple&psig=AOvVaw0lL1PPWOViZCn96Pmhw8zJ&ust=1516248698366174", description: "red")
product_1.save

product_2 = Product.new(title: "Pear", price: "2 $", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiinrStkt7YAhXnw1QKHUDODPwQjRwIBw&url=http%3A%2F%2Fhealthyrise.com%2Fpear%2Fpear-2&psig=AOvVaw1rhDShVxKMKr-Hum8vffMy&ust=1516249141663573", description: "Yellow" )
product_2.save

product_3 = Product.new(title: "Strawberry", price: "2.5 $", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi3pZWak97YAhXlzlQKHfpeAtwQjRwIBw&url=http%3A%2F%2Fwww.calstrawberry.com%2F&psig=AOvVaw2PPipH2y4sAzHYSSHEA5z6&ust=1516249366844407", description: "Red")
product_3.save

product_4 = Product.new(title: "Pineapple", price: "3 $", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi-zPXDld7YAhVsyVQKHWmgBAQQjRwIBw&url=https%3A%2F%2Fwww.shutterstock.com%2Fsearch%2Fpineapple&psig=AOvVaw2rhLZ_2JFCvd-QmXV-SktT&ust=1516249574593097", description: "Yellow")
product_4.save

product_5 = Product.new(title: "Orange", price: "0.5 $", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi9ptnSlt7YAhUJwlQKHUNsBgMQjRwIBw&url=http%3A%2F%2Feskipaper.com%2Ffree-orange-wallpaper.html&psig=AOvVaw2WPJeGM_CLMNrSdn2N6Djc&ust=1516250293620370", description: "Orange")
product_5.save






