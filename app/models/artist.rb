class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|ele| ele.artist == self}
  end

  def galleries
    self.paintings.map {|ele| ele.gallery.name}
  end

  def cities
    self.paintings.map {|ele| ele.gallery.city}
  end

  def self.total_experience
    self.all.map {|ele| ele.years_experience}.reduce {|sum, v| sum += v}
  end

  def self.most_prolific
    # arr = self.all.each_with_index.map {|ele| [ele.name, ele.years_experience]}
    # arr.flatten
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
