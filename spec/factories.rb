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

  factory :review do
    body "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac dapibus ipsum, sed dignissim est. Etiam rutrum, ligula dapibus ullamcorper pharetra, ipsum felis tincidunt quam, ut pulvinar tortor diam ac purus. Sed maximus et tellus ut blandit. Vestibulum sed turpis ante. Ut interdum sodales nibh semper malesuada. Pellentesque hendrerit elit at est placerat, eget pretium arcu luctus. Pellentesque dictum venenatis ipsum vel pharetra. Nunc vehicula consequat finibus."
    user_id 1
    product_id 1
  end
  
end