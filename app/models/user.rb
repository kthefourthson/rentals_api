class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
#   create_table "users", force: :cascade do |t|
#     t.string "name"
#     t.string "email"
#     t.string "password_digest"
#     t.string "role", default: "member"  # 'member', 'admin'
#     t.text "bio"
#     t.string "phone"
#     t.string "profile_picture"
#     t.decimal "average_rating", precision: 3, scale: 2
#     t.string "verification_status", default: "unverified"  # 'unverified', 'pending', 'verified'
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "stripe_customer_id"  # For payments
#     t.string "stripe_account_id"   # For receiving payments as owner
    
#     t.index ["email"], name: "index_users_on_email", unique: true
#   end
  





