class Product < ApplicationRecord
  # create_table "listings", force: :cascade do |t|
  #   t.references :user, null: false, foreign_key: true  # The owner
  #   t.string "title"
  #   t.text "description"
  #   t.string "category"  # 'tools', 'electronics', 'vehicles', etc.
  #   t.decimal "daily_price", precision: 10, scale: 2
  #   t.decimal "weekly_price", precision: 10, scale: 2
  #   t.decimal "monthly_price", precision: 10, scale: 2
  #   t.string "location"
  #   t.string "condition"  # 'new', 'like_new', 'good', 'fair'
  #   t.integer "min_rental_days", default: 1
  #   t.integer "max_rental_days", default: 30
  #   t.string "status", default: "active"  # 'active', 'inactive', 'suspended'
  #   t.boolean "available", default: true
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.float "latitude"
  #   t.float "longitude"
  #   t.string "address"
  #   t.string "city"
  #   t.string "state"
  #   t.string "zip_code"
    
  #   t.index ["user_id", "status"], name: "index_listings_on_user_id_and_status"
  #   t.index ["category"], name: "index_listings_on_category"
  # #   t.index ["location"], name: "index_listings_on_location" 
  # end 
end
  
