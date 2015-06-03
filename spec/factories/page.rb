FactoryGirl.define do
  factory :page do
    title "Some page"
    body ""
    key "some_page"

    factory :page_home do
      title "Tasty Eats."
      key "home"
      settings {{
        tagline: "You pick a plan. I cook and clean. Dinner is ready.",
        quote: "People who give you their food give you their heart.",
        quote_author: "- Cesar Chavez -"
      }}
    end
  end
end