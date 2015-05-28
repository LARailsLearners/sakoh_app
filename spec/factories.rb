FactoryGirl.define do

  factory :user do
  	first_name 'James'
  	last_name 'West'
  	email 'jwest@gmail.com'
  	password '12345678'
  	password_confirmation '12345678'
  end
  
end