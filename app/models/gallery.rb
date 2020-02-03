class Gallery

  attr_reader :name, :city, :artist, :painting

  @@all = []

  def initialize(name, city)
    @name = name 
    @city = city 
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

  def paintings 
    Painting.all.select {|ele| ele.gallery == self}
  end 

  def artists 
    paintings.map {|e| e.artist}
  end 

  def artist_names 
    artists.map {|e| e.name}
  end

  def most_expensive_painting 
    paintings.map {|e| e.price}.sort {|a, b| b <=> a }.first
  end 
end
