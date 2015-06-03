FactoryGirl.define do
  factory :user do
    email "foo@bar.com"
    password "testtest"
    password_confirmation "testtest"
  end
end