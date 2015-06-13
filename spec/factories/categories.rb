FactoryGirl.define do
  factory :category do
    name { Faker::Name.name }
    weight 0
  end
end
