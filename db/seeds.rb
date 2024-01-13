# db/seeds.rb

# Create Users
users = []
5.times do |i|
  username = "user#{i + 1}"
  users << User.create(name: "User #{i + 1}", email: "#{username}@example.com", username: username)
end

# List of movies with titles and release years
movies_list = [
  { title: "The Shawshank Redemption", release_year: 1994 },
  { title: "The Godfather", release_year: 1972 },
  { title: "The Dark Knight", release_year: 2008 },
  { title: "The Godfather Part II", release_year: 1974 },
  { title: "12 Angry Men", release_year: 1957 },
  { title: "Schindler's List", release_year: 1993 },
  { title: "The Lord of the Rings: The Return of the King", release_year: 2003 },
  { title: "Pulp Fiction", release_year: 1994 },
  { title: "The Lord of the Rings: The Fellowship of the Ring", release_year: 2001 },
  { title: "The Good, the Bad and the Ugly", release_year: 1966 },
  { title: "Forrest Gump", release_year: 1994 },
  { title: "Fight Club", release_year: 1999 },
  { title: "The Lord of the Rings: The Two Towers", release_year: 2002 },
  { title: "Inception", release_year: 2010 },
  { title: "Star Wars: Episode V - The Empire Strikes Back", release_year: 1980 }
]

# Create Films
films = []
movies_list.each do |movie|
  films << Film.create(
    title: movie[:title],
    release_date: Date.new(movie[:release_year], 1, 1)
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


