class AddRentalSystem < ActiveRecord::Migration[8.0]
  def change
    change_column :products, :rental_price, :decimal, precision: 10, scale: 2
    add_column :products, :available, :boolean, default: true
    create_table :rentals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.datetime :rented_at
      t.datetime :returned_at
      t.string :status, default: "active"
      t.decimal :total_price, precision: 10, scale: 2
      
      t.timestamps
    end
    add_index :rentals, [:user_id, :product_id]
  end
end
