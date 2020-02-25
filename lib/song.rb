class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
end
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    if artist
      self.artist.name
    else
      nil
    end
  end

end