FactoryGirl.define do
  factory :order do
    card_token Faker::Crypto.md5
    customer_id Faker::Crypto.md5
    stripe_charge_id Faker::Crypto.md5
    amount Faker::Number.number(4).to_i
  end
end
