class ChangePriceTheChange < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :price, :intrger
  end
end
