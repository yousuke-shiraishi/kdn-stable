class AddPriceToPicture < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :price, :integer
  end
end
