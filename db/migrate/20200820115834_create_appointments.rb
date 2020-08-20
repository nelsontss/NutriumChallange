class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :appointment_type
      t.float :price

      t.timestamps
    end
  end
end
