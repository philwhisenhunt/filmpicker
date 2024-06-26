# db/seeds.rb

# Create Users
# users = []
# 5.times do |i|
#   username = "user#{i + 1}"
#   users << User.create(name: "User #{i + 1}", email: "#{username}@example.com", username: username)
# end

users_data = [
  { name: "Tim Ca", email: "tim@example.com" },
  { name: "Michael Fe", email: "michael@example.com" },
  { name: "Alex How", email: "alex@example.com" },
  { name: "Phil W", email: "phil@example.com" },
  { name: "Kyle B", email: "kyle@example.com" }
]

users_data.each do |user_data|
  first_name, last_name = user_data[:name].split(' ')
  username = "#{first_name.downcase}#{last_name[0].downcase}"

  User.create!(
    name: user_data[:name],
    email: user_data[:email],
    username: username
  )
end

# List of movies with titles and release years
long_movies_list = [
    { "title": "The Shawshank Redemption", "release_year": 1994 },
    { "title": "The Godfather", "release_year": 1972 },
    { "title": "The Dark Knight", "release_year": 2008 },
    { "title": "The Godfather Part II", "release_year": 1974 },
    { "title": "12 Angry Men", "release_year": 1957 },
    { "title": "Schindler's List", "release_year": 1993 },
    { "title": "The Lord of the Rings: The Return of the King", "release_year": 2003 },
    { "title": "Pulp Fiction", "release_year": 1994 },
    { "title": "The Lord of the Rings: The Fellowship of the Ring", "release_year": 2001 },
    { "title": "The Good, the Bad and the Ugly", "release_year": 1966 },
    { "title": "Forrest Gump", "release_year": 1994 },
    { "title": "Fight Club", "release_year": 1999 },
    { "title": "The Lord of the Rings: The Two Towers", "release_year": 2002 },
    { "title": "Inception", "release_year": 2010 },
    { "title": "Star Wars: Episode V - The Empire Strikes Back", "release_year": 1980 },
    { "title": "The Matrix", "release_year": 1999 },
    { "title": "Goodfellas", "release_year": 1990 },
    { "title": "One Flew Over the Cuckoo's Nest", "release_year": 1975 },
    { "title": "Se7en", "release_year": 1995 },
    { "title": "It's a Wonderful Life", "release_year": 1946 },
    { "title": "Seven Samurai", "release_year": 1954 },
    { "title": "Interstellar", "release_year": 2014 },
    { "title": "The Silence of the Lambs", "release_year": 1991 },
    { "title": "Saving Private Ryan", "release_year": 1998 },
    { "title": "City of God", "release_year": 2002 },
    { "title": "Life Is Beautiful", "release_year": 1997 },
    { "title": "The Green Mile", "release_year": 1999 },
    { "title": "Star Wars: Episode IV - A New Hope", "release_year": 1977 },
    { "title": "Terminator 2: Judgment Day", "release_year": 1991 },
    { "title": "Spider-Man: Across the Spider-Verse", "release_year": 2023 },
    { "title": "Back to the Future", "release_year": 1985 },
    { "title": "Spirited Away", "release_year": 2001 },
    { "title": "The Pianist", "release_year": 2002 },
    { "title": "Parasite", "release_year": 2019 },
    { "title": "Psycho", "release_year": 1960 },
    { "title": "Gladiator", "release_year": 2000 },
    { "title": "The Lion King", "release_year": 1994 },
    { "title": "Léon: The Professional", "release_year": 1994 },
    { "title": "The Departed", "release_year": 2006 },
    { "title": "American History X", "release_year": 1998 },
    { "title": "Whiplash", "release_year": 2014 },
    { "title": "The Prestige", "release_year": 2006 },
    { "title": "Grave of the Fireflies", "release_year": 1988 },
    { "title": "Harakiri", "release_year": 1962 },
    { "title": "The Usual Suspects", "release_year": 1995 },
    { "title": "Casablanca", "release_year": 1942 },
    { "title": "The Intouchables", "release_year": 2011 },
    { "title": "Modern Times", "release_year": 1936 },
    { "title": "Cinema Paradiso", "release_year": 1988 },
    { "title": "Rear Window", "release_year": 1954 },
    { "title": "Once Upon a Time in the West", "release_year": 1968 },
    { "title": "Alien", "release_year": 1979 },
    { "title": "City Lights", "release_year": 1931 },
    { "title": "Apocalypse Now", "release_year": 1979 },
    { "title": "Django Unchained", "release_year": 2012 },
    { "title": "Memento", "release_year": 2000 },
    { "title": "Raiders of the Lost Ark", "release_year": 1981 },
    { "title": "WALL·E", "release_year": 2008 },
    { "title": "The Lives of Others", "release_year": 2006 },
    { "title": "Sunset Blvd.", "release_year": 1950 },
    { "title": "Paths of Glory", "release_year": 1957 },
    { "title": "Avengers: Infinity War", "release_year": 2018 },
    { "title": "Spider-Man: Into the Spider-Verse", "release_year": 2018 },
    { "title": "The Shining", "release_year": 1980 },
    { "title": "Witness for the Prosecution", "release_year": 1957 },
    { "title": "The Great Dictator", "release_year": 1940 },
    { "title": "Aliens", "release_year": 1986 },
    { "title": "Inglourious Basterds", "release_year": 2009 },
    { "title": "Oppenheimer", "release_year": 2023 },
    { "title": "The Dark Knight Rises", "release_year": 2012 },
    { "title": "American Beauty", "release_year": 1999 },
    { "title": "Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb", "release_year": 1964 },
    { "title": "Oldboy", "release_year": 2003 },
    { "title": "Coco", "release_year": 2017 },
    { "title": "Amadeus", "release_year": 1984 },
    { "title": "Toy Story", "release_year": 1995 },
    { "title": "Das Boot", "release_year": 1981 },
    { "title": "Braveheart", "release_year": 1995 },
    { "title": "Avengers: Endgame", "release_year": 2019 },
    { "title": "Joker", "release_year": 2019 },
    { "title": "Princess Mononoke", "release_year": 1997 },
    { "title": "Good Will Hunting", "release_year": 1997 },
    { "title": "Your Name.", "release_year": 2016 },
    { "title": "Once Upon a Time in America", "release_year": 1984 },
    { "title": "12th Fail", "release_year": 2023 },
    { "title": "3 Idiots", "release_year": 2009 },
    { "title": "High and Low", "release_year": 1963 },
    { "title": "Singin' in the Rain", "release_year": 1952 },
    { "title": "Capernaum", "release_year": 2018 },
    { "title": "Requiem for a Dream", "release_year": 2000 },
    { "title": "Come and See", "release_year": 1985 },
    { "title": "Toy Story 3", "release_year": 2010 },
    { "title": "Star Wars: Episode VI - Return of the Jedi", "release_year": 1983 },
    { "title": "Eternal Sunshine of the Spotless Mind", "release_year": 2004 },
    { "title": "The Hunt", "release_year": 2012 },
    { "title": "2001: A Space Odyssey", "release_year": 1968 },
    { "title": "Reservoir Dogs", "release_year": 1992 },
    { "title": "Ikiru", "release_year": 1952 },
    { "title": "Lawrence of Arabia", "release_year": 1962 },
    { "title": "The Apartment", "release_year": 1960 },
    { "title": "Citizen Kane", "release_year": 1941 },
    { "title": "M", "release_year": 1931 },
    { "title": "North by Northwest", "release_year": 1959 },
    { "title": "Vertigo", "release_year": 1958 },
    { "title": "Double Indemnity", "release_year": 1944 },
    { "title": "Scarface", "release_year": 1983 },
    { "title": "Amélie", "release_year": 2001 },
    { "title": "Full Metal Jacket", "release_year": 1987 },
    { "title": "Incendies", "release_year": 2010 },
    { "title": "A Clockwork Orange", "release_year": 1971 },
    { "title": "Heat", "release_year": 1995 },
    { "title": "Up", "release_year": 2009 },
    { "title": "To Kill a Mockingbird", "release_year": 1962 },
    { "title": "The Sting", "release_year": 1973 },
    { "title": "A Separation", "release_year": 2011 },
    { "title": "Indiana Jones and the Last Crusade", "release_year": 1989 },
    { "title": "Hamilton", "release_year": 2020 },
    { "title": "Die Hard", "release_year": 1988 },
    { "title": "Metropolis", "release_year": 1927 },
    { "title": "Like Stars on Earth", "release_year": 2007 },
    { "title": "Snatch", "release_year": 2000 },
    { "title": "Bicycle Thieves", "release_year": 1948 },
    { "title": "L.A. Confidential", "release_year": 1997 },
    { "title": "1917", "release_year": 2019 },
    { "title": "Taxi Driver", "release_year": 1976 },
    { "title": "Downfall", "release_year": 2004 },
    { "title": "Dangal", "release_year": 2016 },
    { "title": "For a Few Dollars More", "release_year": 1965 },
    { "title": "Batman Begins", "release_year": 2005 },
    { "title": "Some Like It Hot", "release_year": 1959 },
    { "title": "The Wolf of Wall Street", "release_year": 2013 },
    { "title": "The Kid", "release_year": 1921 },
    { "title": "Top Gun: Maverick", "release_year": 2022 },
    { "title": "The Father", "release_year": 2020 },
    { "title": "Green Book", "release_year": 2018 },
    { "title": "All About Eve", "release_year": 1950 },
    { "title": "Judgment at Nuremberg", "release_year": 1961 },
    { "title": "The Truman Show", "release_year": 1998 },
    { "title": "There Will Be Blood", "release_year": 2007 },
    { "title": "Shutter Island", "release_year": 2010 },
    { "title": "Casino", "release_year": 1995 },
    { "title": "Ran", "release_year": 1985 },
    { "title": "Jurassic Park", "release_year": 1993 },
    { "title": "Pan's Labyrinth", "release_year": 2006 },
    { "title": "The Sixth Sense", "release_year": 1999 },
    { "title": "Unforgiven", "release_year": 1992 },
    { "title": "A Beautiful Mind", "release_year": 2001 },
    { "title": "No Country for Old Men", "release_year": 2007 },
    { "title": "The Treasure of the Sierra Madre", "release_year": 1948 },
    { "title": "Yojimbo", "release_year": 1961 },
    { "title": "The Thing", "release_year": 1982 },
    { "title": "Kill Bill: Vol. 1", "release_year": 2003 },
    { "title": "Monty Python and the Holy Grail", "release_year": 1975 },
    { "title": "The Great Escape", "release_year": 1963 },
    { "title": "Finding Nemo", "release_year": 2003 },
    { "title": "Rashomon", "release_year": 1950 },
    { "title": "The Elephant Man", "release_year": 1980 },
    { "title": "Chinatown", "release_year": 1974 },
    { "title": "Howl's Moving Castle", "release_year": 2004 },
    { "title": "Prisoners", "release_year": 2013 },
  ]
  

  movies_list = [
    { "title": "The Shawshank Redemption", "release_year": 1994 },
    { "title": "The Godfather", "release_year": 1972 },
    { "title": "The Dark Knight", "release_year": 2008 },
    { "title": "The Godfather Part II", "release_year": 1974 },
    { "title": "12 Angry Men", "release_year": 1957 },
    { "title": "Schindler's List", "release_year": 1993 },
    { "title": "The Lord of the Rings: The Return of the King", "release_year": 2003 },
    { "title": "Pulp Fiction", "release_year": 1994 },
    { "title": "The Lord of the Rings: The Fellowship of the Ring", "release_year": 2001 },
    { "title": "The Good, the Bad and the Ugly", "release_year": 1966 },
    { "title": "Forrest Gump", "release_year": 1994 },
    { "title": "Fight Club", "release_year": 1999 },
    { "title": "The Lord of the Rings: The Two Towers", "release_year": 2002 },
    { "title": "Inception", "release_year": 2010 },
    { "title": "Star Wars: Episode V - The Empire Strikes Back", "release_year": 1980 },
    { "title": "The Matrix", "release_year": 1999 },
    { "title": "Goodfellas", "release_year": 1990 },
    { "title": "One Flew Over the Cuckoo's Nest", "release_year": 1975 },
    { "title": "Se7en", "release_year": 1995 },
    { "title": "It's a Wonderful Life", "release_year": 1946 },
    { "title": "Seven Samurai", "release_year": 1954 },
    { "title": "Interstellar", "release_year": 2014 },
    { "title": "The Silence of the Lambs", "release_year": 1991 },
    { "title": "Saving Private Ryan", "release_year": 1998 },
    { "title": "City of God", "release_year": 2002 },
    { "title": "Life Is Beautiful", "release_year": 1997 },
    { "title": "The Green Mile", "release_year": 1999 },
    { "title": "Star Wars: Episode IV - A New Hope", "release_year": 1977 },
    { "title": "Terminator 2: Judgment Day", "release_year": 1991 },
    { "title": "Spider-Man: Across the Spider-Verse", "release_year": 2023 }
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
# 1/16/24 Remove for now
# films.each do |film|
#   # Choose a random number of viewings (1 or 2)
#   rand(1..2).times do
#     user = users.sample
#     Viewing.create(user: user, film: film)
#   end
# end


