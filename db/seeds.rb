# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Recipe.create(
  name: "Spaghetti Carbonara",
  description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream, just eggs, pancetta, Pecorino Romano cheese and lots of black pepper.",
  image_url: "https://images.unsplash.com/photo-1588013273468-315fd88ea34c",
  rating: 4.8
)

Recipe.create(
  name: "Mushroom Risotto",
  description: "Creamy Italian rice dish with sautéed mushrooms, white wine, and Parmesan cheese, slowly cooked to perfection.",
  image_url: "https://images.unsplash.com/photo-1476124369491-e7addf5db371",
  rating: 4.5
)

Recipe.create(
  name: "Beef Miso Ramen",
  description: "Japanese noodle soup with rich beef and miso broth, topped with tender sliced beef, soft-boiled egg, and green onions.",
  image_url: "https://images.unsplash.com/photo-1557872943-16a5ac26437e",
  rating: 4.7
)

Recipe.create(
  name: "Berry Breakfast Smoothie",
  description: "Quick and nutritious smoothie made with mixed berries, banana, yogurt, and a touch of honey for natural sweetness.",
  image_url: "https://images.unsplash.com/photo-1553530666-ba11a90bb664",
  rating: 4.2
)
