class ChangePriceTheChange < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :price, "USING price::integer"
    change_column :products, :price, :integer
  end
end
