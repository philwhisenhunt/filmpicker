# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

# Create Users
users = []
5.times do |i|
  username = "user#{i + 1}"
  users << User.create(name: "User #{i + 1}", email: "#{username}@example.com", username: username)
end

# Create Films
films = []
10.times do |i|
  random_year = rand(1926..2024)
  films << Film.create(
    title: "Film #{i + 1}",
    director: "Director #{i + 1}",
    release_date: Date.new(random_year, 1, 1) + i.days
  )
end

# Create Viewings
films.each do |film|
  # Choose a random number of viewings (1 or 2)
  rand(1..2).times do
    user = users.sample
    Viewing.create(user: user, film: film)
  end
end