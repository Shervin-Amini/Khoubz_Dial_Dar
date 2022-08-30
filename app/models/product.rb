class Product < ApplicationRecord
  belongs_to :seller, foreign_key: :seller_id,  class_name: "User"

  validates :name, :description, :price, presence: true
end
