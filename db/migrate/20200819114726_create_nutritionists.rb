class CreateNutritionists < ActiveRecord::Migration[6.0]
  def change
    create_table :nutritionists do |t|
      t.string :name
      t.string :clinic
      t.string :street
      t.string :place
      t.string :city

      t.timestamps
    end
  end
end
