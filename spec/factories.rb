FactoryGirl.define do

  factory :user do
  	first_name 'James'
  	last_name 'West'
  	email 'jwest@hotmail.com'
  	password '12345678'
  	password_confirmation '12345678'
  end

  factory :product do
  	name 'Nintendo'
  	description 'Best Video Game System ever'
  	price 400
  end
  
end