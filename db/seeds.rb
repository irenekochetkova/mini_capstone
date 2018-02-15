Supplier.create!([
  {name: "FarmerJon", email: "famerjon@gmail.com", phone_number: "9872737"},
  {name: "RedOrchard", email: "redorchard@gmail.com", phone_number: "8239495"},
  {name: "FarmerJon", email: "famerjon@gmail.com", phone_number: "9872737"},
  {name: "RedOrchard", email: "redorchard@gmail.com", phone_number: "8239495"},
  {name: "AllFruits", email: "allfruits@gmail.com", phone_number: "3762940"}
])

Product.create!([
  {title: "Apple", price: "3.0", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiK-4XakN7YAhWmjlQKHc_ICQMQjRwIBw&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Fapple&psig=AOvVaw0lL1PPWOViZCn96Pmhw8zJ&ust=1516248698366174", description: "red", availability: true, supplier_id: 1},
  {title: "Pear", price: "2.0", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiinrStkt7YAhXnw1QKHUDODPwQjRwIBw&url=http%3A%2F%2Fhealthyrise.com%2Fpear%2Fpear-2&psig=AOvVaw1rhDShVxKMKr-Hum8vffMy&ust=1516249141663573", description: "Yellow", availability: true, supplier_id: 2},
  {title: "Strawberry", price: "5.0", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi3pZWak97YAhXlzlQKHfpeAtwQjRwIBw&url=http%3A%2F%2Fwww.calstrawberry.com%2F&psig=AOvVaw2PPipH2y4sAzHYSSHEA5z6&ust=1516249366844407", description: "Red", availability: true, supplier_id: 3},
  {title: "Pineapple", price: "3.5", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi-zPXDld7YAhVsyVQKHWmgBAQQjRwIBw&url=https%3A%2F%2Fwww.shutterstock.com%2Fsearch%2Fpineapple&psig=AOvVaw2rhLZ_2JFCvd-QmXV-SktT&ust=1516249574593097", description: "Yellow", availability: true, supplier_id: 1},
  {title: "Orange", price: "0.5", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi9ptnSlt7YAhUJwlQKHUNsBgMQjRwIBw&url=http%3A%2F%2Feskipaper.com%2Ffree-orange-wallpaper.html&psig=AOvVaw2WPJeGM_CLMNrSdn2N6Djc&ust=1516250293620370", description: "Orange", availability: true, supplier_id: 1}
])
