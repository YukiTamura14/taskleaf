FactoryBot.define do
  factory :task do
    name { Faker::Lorem.word }
    detail { Faker::Lorem.sentence }
  end
end

