class FixNutritionistTypeCollumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :nutritionists, :type, :nutritionist_type
  end
end
