FactoryBot.define do
  factory :user do
    first_name { Faker::Superhero.prefix }
    last_name { Faker::BackToTheFuture.character }
    username { Faker::DragonBall.character }
    email { Faker::Internet.email }
    age { rand(12..120) }
    city { Faker::StarWars.planet }
    description { Faker::StrangerThings.quote }
  end
end
