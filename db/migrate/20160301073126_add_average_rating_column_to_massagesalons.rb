class AddAverageRatingColumnToMassagesalons < ActiveRecord::Migration
  def change
    add_column :massagesalons, :average_rating, :float
  end
end
