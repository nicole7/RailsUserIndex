FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    fav_color { Faker::Color.color_name }
    email { Faker::Internet.email }
    password "123456"
  end
end
