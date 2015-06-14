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

categories = {
  "Salads" => [
    { name: "kale",
      description: "dried cranberry, chick pea, slivered almond, cracked pepper, lemon vinaigrette" },
    { name: "siciliana",
      description: "supreme oranges, shaved fennel, fresh mint, cracked pepper, olive oil" },
    { name: "grilled garden",
      description: "arugula, radicchio, grilled zucchini, squash, eggplant, charred cherry tomato, herb vinaigrette" },
    { name: "papa salad",
      description: "romaine, tomato, onion, oregano, sea salt, cracked pepper, olive oil, red wine vinegar" },
    { name: "caesar",
      description: "grilled romaine, red onion, sourdough croutons, shaved parm, caesar dressing" },
    { name: "tutti frutti",
      description: "red leaf, frisee, pear, manderin orange, raspberry, walnut, bleu, balsamic vinaigrette" }
  ],

  "Meat entrees" => [
    { name: "chicken parm",
      description: "breaded chicken cutlets, tomato sauce, melty parm, basil, best with speghetti & marinara" },
    { name: "korean style steak",
      description: "marinated in a sweet & savory sauce, grilled, thinly sliced, scallion, sesame seed, best over jasmine rice" },
    { name: "lemon-rosemary turkey meatballs",
      description: "sauteed to perfection, sun dried tomato, basil leaves, best over bow ties with a drizzle of lemon-garlic olive oil" },
    { name: "gambas y jamón",
      description: "shrimp, prosciutto, garlic & onion sauteed to golden, pinto beans, pan sauce & cilantro, best over corn tortillas" },
    { name: "cajun salmon",
      description: "oven-baked in a homemade cajun rub, drizzled with cucumber dill yogurt sauce, best over grilled garden salad" },
    { name: "\"italian\" beef",
      description: "braised to perfect tenderness in a spicy beef stock, with homemade giardiniera served with au jus & crostini" },
  ],

  "Veggie entrees" => [
    { name: "arancini",
      description: "risotto, tomato sauce & peas stuffed with mozzarella then breaded & fried to perfection, the ultimate one-plate meal" },
    { name: "rice bowl",
      description: "jasmine rice, avocado, carrot, red cabbage, edemame beans, red bell pepper, jalapeno, sesame seeds, cilantro" },
    { name: "stuffed poblano",
      description: "quinoa, brown rice, onion, hominy, corn, black bean, tomato, cotija, cilantro" },
    { name: "cannelloni",
      description: "mashed butternut squash, sage, ricotta, parm" },
    { name: "pot pie",
      description: "cauliflower, carrots, mushroom, zucchini bundled in a parm-tarragon crust" },
    { name: "eggplant parm",
      description: "breaded eggplant, marinara, parm & basil" }
  ],

  "Tacos" => [
    { name: "pork belly",
      description: "brasied & sauteed pork belly, fresh jalapeno, pineapple, yellow onion, creme fraiche" },
    { name: "pulled chicken",
      description: "slow-braised chicken, stewed tomato & onion, adobo" },
    { name: "veggie",
      description: "grilled corn & sweet potato, black bean, jalapeno, red pepper, red onion, spicy sour cream, cilantro" },
    { name: "white boy",
      description: "spicy ground beef, fresh onions, chopped romaine, diced tomato, cheddar, sour cream" },
    { name: "baja",
      description: "grilled shrimp, avocado, red cabbage, black bean, citrus aioli" },
    { name: "purist",
      description: "guac, pico, lime" }
  ],

  "Pizza" => [
    { name: "stefano",
      description: "tomato sauce, salame piccante, manchego" },
    { name: "norma",
      description: "tomato sauce, eggplant, ricotta, chopped basil" },
    { name: "jeem",
      description: "garlic-infused olive oil, prosciutto, fontina, arugula" },
    { name: "katrina",
      description: "olive oil, fig, caramelized onions, gorgonzola, thyme" },
    { name: "patrizio",
      description: "pesto, grilled zucchini & squash, sliced tomato, light parm" },
    { name: "mama mia",
      description: "tomato sauce, fior di latte mozzarella, basil leaves, olive oil" },
    { name: "seppi",
      description: "olive oil, potato, sausage, fresh rosemary, cracked pepper, sea salt" }
  ],

  "Sandwiches" => [
    { name: "caprese",
      description: "beefsteak tomato, fresh mozz, basil, sea salt, red wine vinaigrette, baguette" },
    { name: "turkey blt",
      description: "shaved honey turkey, applewood smoked bacon, sweet tomato-basil jam, arugula, pretzel bun" },
    { name: "falafel",
      description: "seasoned garbanzo beans, lemon, jerusalem salad, tahini, warm pita" },
    { name: "chicken & waffle sliders",
      description: "breaded tenders, maple syrup, fresh sage, waffle bun" },
    { name: "ham & cheese",
      description: "prosciutto, grilled eggplant, sweet ricotta, parsley, hot pressed ciabatta" },
    { name: "cb&j",
      description: "cashew butter, cinnamon banana spread, homemade strawberry-rosemary jam, grilled sourdough" },
    { name: "chicken salad",
      description: "poached chicken breast, sour cream, honey, onion, celery, red grapes, dried cherries, slivered almonds, arugula, whole wheat bread" }
  ],

  "Sides" => [
    { name: "polenta",
      description: "slow-cooked then oven roasted with caramelized onions and bleu" },
    { name: "beets",
      description: "roasted red beets, shaved red onion, goat cheese, chives, vinaigrette" },
    { name: "slaw",
      description: "red & napa cabbage, carrot, shaved onion, lime, sour cream, soy sauce" },
    { name: "guac",
      description: "mashed avocado, grilled corn, black bean, kale, tomato, onion, lime, cilantro, jalapeno, chili" },
    { name: "papa potato salad",
      description: "boiled russets, blanched green beans, cherry tomatoes, oregano & red wine vinaigrette" },
    { name: "brussels",
      description: "pan seared, pancetta, sage, maple syrup" },
    { name: "broccoli",
      description: "sauteed in olive oil and garlic until golden and crispy" },
    { name: "cauliflower",
      description: "oven-roasted with raisins, breadcrumb & pine nuts" },
    { name: "greek potatoes",
      description: "boiled russets, fresh parsley, shaved red onion, lemon, olive oil, feta" },
    { name: "pickled cucumbers",
      description: "shaved red onion, rice wine vinegar" },
    { name: "carrots",
      description: "gently sautéed with ginger, garlic, peanuts & rice bran oil" }
  ],

  "Vehicles" => [
    { name: "cous cous", description: "" },
    { name: "jasmine rice", description: "" },
    { name: "risotto", description: "" },
    { name: "brown rice", description: "" },
    { name: "quinoa", description: "" },
    { name: "brown rice & quinoa mix", description: "" },
    { name: "farro", description: "" },
    { name: "fresh rolled pasta dough", description: "" },
    { name: "handmade naan", description: "" },
    { name: "pita", description: "" },
    { name: "corn tortillas", description: "" },
    { name: "homemade bread bowl", description: "" }
  ]
}

categories.each_pair do |category_name, menu_items|
  category = Category.create(name: category_name)
  menu_items.each do |menu_item|
    MenuItem.create(name: menu_item[:name], description: menu_item[:description], category: category)
  end
end