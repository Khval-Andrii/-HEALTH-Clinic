FactoryBot.define do
  factory :doctor do
    name { Faker::Name.name }
    password { 'password' }
    association :category, factory: :category
  end

  factory :category do
    name { 'Category_description' }
    description { 'Category_description' }
  end
end