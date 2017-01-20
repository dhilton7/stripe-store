FactoryGirl.define do
  factory :product do
    name 				Faker::Commerce.product_name
    description Faker::Hipster.sentence(20)
    price 			Faker::Commerce.price.to_i
  end
end
