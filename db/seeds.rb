CartedProduct.create!([
  {user_id: 1, product_id: 1, quantity: 2, status: "carted", order_id: nil},
  {user_id: 1, product_id: 1, quantity: 2, status: "created", order_id: nil},
  {user_id: 1, product_id: 1, quantity: 2, status: "carted", order_id: nil},
  {user_id: 1, product_id: 1, quantity: 2, status: "created", order_id: nil}
])
Category.create!([
  {title: "Gala"},
  {title: "Argentina"},
  {title: "Bosc"},
  {title: "Anjou"},
  {title: "Albion"},
  {title: "Alexandria"},
  {title: "Red spanish"},
  {title: "Queen"},
  {title: "Common orange"},
  {title: "Elegant Lady"},
  {title: "Gala"},
  {title: "Argentina"},
  {title: "Bosc"},
  {title: "Anjou"},
  {title: "Albion"},
  {title: "Alexandria"},
  {title: "Red spanish"},
  {title: "Queen"},
  {title: "Common orange"},
  {title: "Elegant Lady"}
])
CategoryProduct.create!([
  {category_id: 2, product_id: 2},
  {category_id: 1, product_id: 1},
  {category_id: 5, product_id: 3},
  {category_id: 8, product_id: 4},
  {category_id: 9, product_id: 5},
  {category_id: 2, product_id: 2},
  {category_id: 1, product_id: 1},
  {category_id: 5, product_id: 3},
  {category_id: 8, product_id: 4},
  {category_id: 9, product_id: 5}
])
Order.create!([
  {user_id: 1, subtotal: "9.0", tax: "0.81", total: "9.81"},
  {user_id: 1, subtotal: "21.0", tax: "1.89", total: "22.89"},
  {user_id: 1, subtotal: "9.0", tax: "0.81", total: "9.81"},
  {user_id: 1, subtotal: "21.0", tax: "1.89", total: "22.89"}
])
Product.create!([
  {title: "Strawberry", price: "5.0", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi3pZWak97YAhXlzlQKHfpeAtwQjRwIBw&url=http%3A%2F%2Fwww.calstrawberry.com%2F&psig=AOvVaw2PPipH2y4sAzHYSSHEA5z6&ust=1516249366844407", description: "Red", supplier_id: 3, availability: true},
  {title: "Pineapple", price: "3.5", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi-zPXDld7YAhVsyVQKHWmgBAQQjRwIBw&url=https%3A%2F%2Fwww.shutterstock.com%2Fsearch%2Fpineapple&psig=AOvVaw2rhLZ_2JFCvd-QmXV-SktT&ust=1516249574593097", description: "Yellow", supplier_id: 1, availability: true},
  {title: "Orange", price: "0.5", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi9ptnSlt7YAhUJwlQKHUNsBgMQjRwIBw&url=http%3A%2F%2Feskipaper.com%2Ffree-orange-wallpaper.html&psig=AOvVaw2WPJeGM_CLMNrSdn2N6Djc&ust=1516250293620370", description: "Orange", supplier_id: 1, availability: true},
  {title: "Peach", price: "2.45", image_url: "https://www.fishersorchard.com/picking-schedule/", description: "Yellow-red", supplier_id: 2, availability: true},
  {title: "Apricot", price: "2.8", image_url: "http://www.adagio.com/flavors/apricot.html", description: "small fruits with big flavor and valuable nutritional properties ", supplier_id: 1, availability: true},
  {title: "Banana", price: "0.79", image_url: "https://www.livescience.com/45005-banana-nutrition-facts.html", description: "An elongated usually tapering tropical fruit with soft pulpy flesh enclosed in a soft usually yellow rind", supplier_id: 1, availability: true},
  {title: "Persimmon", price: "0.99", image_url: "https://www.littlesweetbaker.com/2014/11/21/persimmon-pudding-cake-6/", description: "bright sweetness", supplier_id: 2, availability: true},
  {title: "Pear", price: "2.0", image_url: "http://healthyrise.com/wp-content/uploads/2016/09/Pear-2.jpg", description: "Yellow", supplier_id: 2, availability: true},
  {title: "Apple", price: "3.0", image_url: "\"https://www.chelanfresh.com/hs-fs/hubfs/Images/honey-crisp-apple-chelan-fresh.png?t=1517307882428&width=238&height=301&name=honey-crisp-apple-chelan-fresh.png\"", description: "red", supplier_id: 1, availability: true}
])
Supplier.create!([
  {name: "FarmerJon", email: "famerjon@gmail.com", phone_number: "9872737"},
  {name: "RedOrchard", email: "redorchard@gmail.com", phone_number: "8239495"},
  {name: "FarmerJon", email: "famerjon@gmail.com", phone_number: "9872737"},
  {name: "RedOrchard", email: "redorchard@gmail.com", phone_number: "8239495"},
  {name: "AllFruits", email: "allfruits@gmail.com", phone_number: "3762940"},
  {name: "FreshFruits", email: "freshfruits@gmail.com", phone_number: "4837554"},
  {name: "sss", email: "sss", phone_number: "232333"}
])
User.create!([
  {name: "victor", email: "victor@gmail.com", password_digest: "$2a$10$mijDMtZkqieuPn.Y2wjrS.VkDiVr4ymHPa0hhmWeTr8BjHMcCdgZe", admin: false},
  {name: "irene", email: "irene@gmail.com", password_digest: "$2a$10$W4aG41K0ufvDfDCH5nr6EuxwDys1qxq3wqqPD.e89E.9GV1B2tK5W", admin: true}
])
