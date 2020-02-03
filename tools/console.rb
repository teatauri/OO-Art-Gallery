require_relative '../config/environment.rb'
require 'pp'

# gallery init 

g1 = Gallery.new("Gallery_1", "London")
g2 = Gallery.new("Gallery_2", "Belfast")
g3 = Gallery.new("Gallery_3", "Toronto") 

# artist init 

a1 = Artist.new("artist_1", 1)
a2 = Artist.new("artist_2", 2)

#painting init 

p1 = Painting.new("Moon", 10, a1, g1)
p2 = Painting.new("Sun", 20, a1, g2)
p3 = Painting.new("Earth", 30, a2, g3)



# artist 
Artist.all
a1.paintings
a1.galleries
a1.cities
Artist.total_experience 
pp Artist.most_prolific
a1.create_painting("Stars", 40, g2)


# painting 
Painting.all 
Painting.total_price

# gallery 
Gallery.all
g3.paintings
g3.artists
g3.artist_names
g2.most_expensive_painting





# binding.pry

#
