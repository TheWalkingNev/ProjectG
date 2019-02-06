FactoryBot.define do
  factory :user do
    city_id { FactoryBot.create(:city).id }
    first_name { Faker::Superhero.prefix }
    last_name { Faker::BackToTheFuture.character }
    username { Faker::DragonBall.character }
    email { Faker::Internet.email }
    age { rand(12..120) }
    description { Faker::StrangerThings.quote }
  end
end
