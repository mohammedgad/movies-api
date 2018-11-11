FactoryBot.define do
  factory :user do
    name { Faker::StarWars.unique.character }
    email {Faker::Internet.unique.email}
    password '123456'
  end
end
