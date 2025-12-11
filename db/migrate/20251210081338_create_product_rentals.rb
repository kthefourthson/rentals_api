class CreateProductRentals < ActiveRecord::Migration[8.0]
  def change
    create_table :product_rentals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.decimal :total_price
      t.string :status

      t.timestamps
    end
  end
end
