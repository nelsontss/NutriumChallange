class NutritionistAddImageCollumn < ActiveRecord::Migration[6.0]
  def change
    add_column :nutritionists, :image, :string
  end
end
