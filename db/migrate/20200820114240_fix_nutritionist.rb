class FixNutritionist < ActiveRecord::Migration[6.0]
  def change
    remove_column :nutritionists,  :city
    remove_column :nutritionists,  :street
    remove_column :nutritionists,  :clinic
    remove_column :nutritionists,  :place
    add_column :nutritionists, :code, :string
    add_column :nutritionists, :type, :string
  end
end
