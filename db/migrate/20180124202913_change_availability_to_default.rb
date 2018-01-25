class ChangeAvailabilityToDefault < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :availability, :boolean, default: true
  end
end
