# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

Studio.destroy_all

Warner_Bros = Studio.new
Warner_Bros.name = "Warner Bros."
Warner_Bros.save
puts Warner_Bros.inspect

puts "There are #{Studio.all.count} studios."

Movie.destroy_all

Batman_Begins = Movie.new
Batman_Begins.title = "Batman Begins"
Batman_Begins.year_released = 2005
Batman_Begins.rated = "PG-13"
Batman_Begins.studio_id = Studio.find_by({"name" => "Warner Bros."}).id
Batman_Begins.save
puts Batman_Begins.inspect

Dark_Knight = Movie.new
Dark_Knight.title = "The Dark Knight"
Dark_Knight.year_released = 2008
Dark_Knight.rated = "PG-13"
Dark_Knight.studio_id = Studio.find_by({"name" => "Warner Bros."}).id
Dark_Knight.save
puts Dark_Knight.inspect

Knight_Rises = Movie.new
Knight_Rises.title = "The Dark Knight Rises"
Knight_Rises.year_released = 2012
Knight_Rises.rated = "PG-13"
Knight_Rises.studio_id = Studio.find_by({"name" => "Warner Bros."}).id
Knight_Rises.save
puts Knight_Rises.inspect

puts "There are #{Movie.all.count} movies."

Actor.destroy_all

Christian_Bale = Actor.new
Christian_Bale.name = "Christian Bale."
Christian_Bale.save

Michael = Actor.new
Michael.name = "Michael Cain."
Michael.save

Liam = Actor.new
Liam.name = "Liam Neeson."
Liam.save

Katie = Actor.new
Katie.name = "Katie Holmes."
Katie.save

Gary = Actor.new
Gary.name = "Gary Oldman."
Gary.save

Heath = Actor.new
Heath.name = "Heath Ledger."
Heath.save

Aaron = Actor.new
Aaron.name = "Aaron Eckhart."
Aaron.save

Maggie = Actor.new
Maggie.name = "Maggie Gyllenhaal."
Maggie.save

Tom = Actor.new
Tom.name = "Tom Hardy."
Tom.save

Joseph = Actor.new
Joseph.name = "Joseph Gordon-Levitt."
Joseph.save

Anne = Actor.new
Anne.name = "Anne Hathaway."
Anne.save

puts "There are #{Actor.all.count} actors."

Role.destroy_all

role1 = Role.new
role1.movie_id = 

puts "There are #{Role.all.count} roles."




# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
