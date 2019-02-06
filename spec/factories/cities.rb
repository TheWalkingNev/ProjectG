FactoryBot.define do
  factory :city do
    name { Faker::ElderScrolls.city }
    zip_code { Faker::Address.zip_code }
  end
end
