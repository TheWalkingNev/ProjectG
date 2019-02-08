FactoryBot.define do
  factory :comment do
    content { Faker::DumbAndDumber.quote }
    user_id { FactoryBot.create(:user).id }
    gossip_id { FactoryBot.create(:gossip).id }
  end
end
