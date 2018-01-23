class Product < ApplicationRecord

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
    total: total
  }
  end
end
