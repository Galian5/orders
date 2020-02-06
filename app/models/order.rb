class Order < ApplicationRecord
  validates :user_name, :price, presence: true
end
