class Artist 
  attr_accessor :name, :songs 
  @@all = []
  @@song_total
  
  def initialize(name)
    @name = name
    @@all << self
    @@song_total = 0
  end

  def self.all  
    @@all
  end
  
  def add_song(song)
    song.artist = self
    @@song_total += 1
  end  
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end
  end
  

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @@song_total += 1
  end

  def self.song_count
    @@song_total
  end

end

