class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products
  has_many :reviews
  validates :first_name, presence: true, length: {minimum: 2, maximum: 50}
  validates :last_name, presence: true, length: {minimum: 2, maximum: 100}
end
