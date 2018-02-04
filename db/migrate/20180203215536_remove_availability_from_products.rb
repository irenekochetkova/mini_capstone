class RemoveAvailabilityFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :availability, :boolean, default: true
  end
end
