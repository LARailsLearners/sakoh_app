class Product < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true, length: {minimum: 3, maximum: 20}
  validates :description, presence: true, length: {minimum: 10, maximum: 500}
  validates :price, presence: true
  validates :user_id, presence: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://placehold.it/350x150"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
