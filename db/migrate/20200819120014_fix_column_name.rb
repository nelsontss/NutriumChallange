class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    change_table :nutritionists do |t|
      t.rename :clinica, :clinic
      t.rename :rua, :street
      t.rename :localidade, :place
      t.rename :distrito, :city
    end
  end
end
