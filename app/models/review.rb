class Review < ActiveRecord::Base
  validates :rating, presence: true, numericality: {greater_than: 0, less_than_or_equal_to: 5}
  validates :body, presence: true
  validates :user_id, presence: true, uniqueness: true
  validates :product_id, presence: true
  belongs_to :user
  belongs_to :product
end
