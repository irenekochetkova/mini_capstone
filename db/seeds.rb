Supplier.create!([
  {name: "FarmerJon", email: "famerjon@gmail.com", phone_number: "9872737"},
  {name: "RedOrchard", email: "redorchard@gmail.com", phone_number: "8239495"},
  {name: "FarmerJon", email: "famerjon@gmail.com", phone_number: "9872737"},
  {name: "AllFruits", email: "allfruits@gmail.com", phone_number: "3762940"},
  {name: "FreshFruits", email: "freshfruits@gmail.com", phone_number: "4837554"}
])
Product.create!([
  {title: "Strawberry", price: "5.0", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/PerfectStrawberry.jpg/220px-PerfectStrawberry.jpg", description: "Red", supplier_id: 3, availability: true},
  {title: "Pineapple", price: "3.5", image_url: "https://www.organicfacts.net/wp-content/uploads/2013/06/Pineapple.jpg", description: "Yellow", supplier_id: 1, availability: true},
  {title: "Orange", price: "0.5", image_url: "https://epickmart.com/wp-content/uploads/2017/08/orange-04-1.jpg", description: "Orange", supplier_id: 1, availability: true},
  {title: "Peach", price: "2.45", image_url: "https://www.mysteryscenemag.com/images/stock/peach.jpg", description: "Yellow-red", supplier_id: 2, availability: true},
  {title: "Apricot", price: "2.8", image_url: "https://www.adagio.com/images5/flavor_thumbnail/apricot.jpg", description: "small fruits with big flavor and valuable nutritional properties ", supplier_id: 1, availability: true},
  {title: "Banana", price: "0.79", image_url: "https://www.organicfacts.net/wp-content/uploads/2013/05/Banana3.jpg", description: "An elongated usually tapering tropical fruit with soft pulpy flesh enclosed in a soft usually yellow rind", supplier_id: 1, availability: true},
  {title: "Persimmon", price: "0.99", image_url: "http://media.mercola.com/assets/images/foodfacts/persimmons-nutrition-facts.jpg", description: "bright sweetness", supplier_id: 2, availability: true},
  {title: "Pear", price: "2.0", image_url: "http://healthyrise.com/wp-content/uploads/2016/09/Pear-2.jpg", description: "Yellow", supplier_id: 2, availability: true},
  {title: "Apple", price: "3.0", image_url: "https://www.chelanfresh.com/hs-fs/hubfs/Images/honey-crisp-apple-chelan-fresh.png?t=1517307882428&width=238&height=301&name=honey-crisp-apple-chelan-fresh.png", description: "red", supplier_id: 1, availability: true}
])
User.create!([
  {name: "victor", email: "victor@gmail.com", password_digest: "$2a$10$mijDMtZkqieuPn.Y2wjrS.VkDiVr4ymHPa0hhmWeTr8BjHMcCdgZe", admin: false},
  {name: "irene", email: "irene@gmail.com", password_digest: "$2a$10$W4aG41K0ufvDfDCH5nr6EuxwDys1qxq3wqqPD.e89E.9GV1B2tK5W", admin: true}
])
CartedProduct.create!([
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
  {title: "Elegant Lady"}
])
CategoryProduct.create!([
  {category_id: 2, product_id: 2},
  {category_id: 1, product_id: 1},
  {category_id: 5, product_id: 3},
  {category_id: 8, product_id: 4},
  {category_id: 9, product_id: 5}
])
Order.create!([
  {user_id: 1, subtotal: "9.0", tax: "0.81", total: "9.81"},
  {user_id: 1, subtotal: "21.0", tax: "1.89", total: "22.89"}
])



