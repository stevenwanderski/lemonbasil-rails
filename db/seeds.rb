User.create(email: "admin@admin.com", password: "testtest", password_confirmation: "testtest")

Page.create([
  { title: "Tasty Eats. Made for You.", body: "", key: "home", settings: {
      tagline: "You pick a plan. I cook and clean. Dinner is ready.",
      quote: "People who give you their food give you their heart.",
      quote_author: "- Cesar Chavez -"
    }
  },
  { title: "How it Works", body: "", key: "how_it_works" },
  { title: "About Me", body: "", key: "about" }
])