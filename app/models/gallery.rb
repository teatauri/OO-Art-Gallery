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
    Painting.all.select {|ele| ele.gallery == self }
  end

  def artists
    self.paintings.map {|ele| ele.artist}
  end

  def artist_names
    self.artists.map {|ele| ele.name}
  end

  def most_expensive_painting
    self.paintings.map {|ele| ele.price}.max
  end

end
