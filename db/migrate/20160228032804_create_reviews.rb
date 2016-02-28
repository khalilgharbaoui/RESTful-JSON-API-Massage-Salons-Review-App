class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer_name
      t.text :review
      t.integer :rating
      t.references :massagesalon, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
