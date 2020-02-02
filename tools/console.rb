require_relative '../config/environment.rb'
require 'pp'

# artist init

dave = Artist.new("Dave", 13)
alan = Artist.new("Alan", 5)
partridge = Artist.new("Partridge", 18)
clare = Artist.new("Clare", 14)

# gallery init

g1 = Gallery.new("Gallery1", "Belfast")
g2 = Gallery.new("Gallery2", "London")
g3 = Gallery.new("Gallery3", "Leicester")
g4 = Gallery.new("Gallery4", "Toronto")

# painting init

p1 = Painting.new("Moon", 100, dave, g1)
p2 = Painting.new("Sun", 200, alan, g2)
p3 = Painting.new("Pigeon", 300, partridge, g3)
p4 = Painting.new("Salami", 400, clare, g4)
p5 = Painting.new("Bread", 500, clare, g3)


# artist
Artist.all
clare.paintings
clare.galleries
clare.cities
Artist.total_experience
# Artist.most_prolific
clare.create_painting("New", 600, g1)


# painting
Painting.all
Painting.total_price


# gallery
Gallery.all
g3.paintings
g3.artists
g3.artist_names
g3.most_expensive_painting



# binding.pry

#
