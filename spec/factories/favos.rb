FactoryBot.define do
  factory :favo do
    movie_id { Faker::Number.number(10) }
    movie_title { Faker::Lorem.word }
    movie_poster { Faker::LoremFlickr.image }
    movie_overview { Faker::Lorem.word }
    user_id { Faker::Number.number(10) }
  end
end
