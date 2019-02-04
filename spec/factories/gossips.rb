FactoryBot.define do
  factory :gossip do
    user_id { FactoryBot.create(:user).id }
    title { Faker::Pokemon.move }
    content { Faker::StarWars.wookiee_sentence }
  end
end
