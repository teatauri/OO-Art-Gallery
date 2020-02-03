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
    paintings.map {|ele| ele.gallery } 
  end 

  def cities 
    paintings.map {|ele| ele.gallery.city }
  end 

  def self.total_experience 
    self.all.map {|e| e.years_experience }.sum
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 

  def self.most_prolific 
    self.all.map {|ele| ele.paintings.size / ele.years_experience.to_f }.sort {|a, b| b <=> a}.first 
    # self.all.max_by { |a| a.paintings.size / a.years_experience.to_f }
  end 
end
