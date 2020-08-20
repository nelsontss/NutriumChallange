class CreateTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :appointments
    drop_table :nutritionists
    drop_table :clinics

    create_table :clinics do |t|
      t.string :name
      t.string :street
      t.string :place
      t.string :city

      t.timestamps
    end

    create_table :nutritionists do |t|
      t.string :name
      t.string :code
      t.string :nutritionist_type
      t.belongs_to :clinic
      t.timestamps
    end

    create_table :appointments do |t|
      t.string :appointment_type
      t.float :price
      t.belongs_to :nutritionist

      t.timestamps
    end
  end
end
