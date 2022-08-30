class Order < ApplicationRecord
  belongs_to :buyer, foreign_key: :buyer_id,  class_name: "User"
  belongs_to :product

  validates :status, presence: true
end
