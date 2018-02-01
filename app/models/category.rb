class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products

  def as_json
    {
      id: id,
      title: title,
      products: products.map {|product| product.title
      }
    }
    
  end
    

end
