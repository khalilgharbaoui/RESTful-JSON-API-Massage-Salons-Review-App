class CreateMassagesalons < ActiveRecord::Migration
  def change
    create_table :massagesalons do |t|
      t.string :massage_salon_name
      t.text :massage_salon_description
      t.string :massage_salon_city

      t.timestamps null: false
    end
  end
end
