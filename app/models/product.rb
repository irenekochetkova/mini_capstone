class Product < ApplicationRecord

  has_many :category_products 
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  belongs_to :supplier


  validates :title, presence: true, uniqueness: true, length: {minimum: 2}
  validates :price, presence: true
  validates :description, length: {in: 3..500}
  
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end




  def is_discounted?
   price.to_f <= 2
  end

  def tax
    price.to_f * 0.09
  end



  def total
    price.to_f + tax
  end

  def as_json
    {
    id: id,
    title: title,
    price: price,
    image_url: image_url,
    description: description,
    is_discounted: is_discounted?,
    tax: tax, 
    total: total,
    availability: availability,
    supplier: supplier.as_json,
    categories: categories.map { |category| category.title 
    }
  }
  end
end
