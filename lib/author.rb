class Author
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all
  end
   
  def add_post(post)
    post.artist = self
    @@post_total += 1
  end  
  
  def posts 
    Post.all.select do |post|
      post.artist == self
    end
  end
  

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    post.artist = self
    @@post_total += 1
  end

  def self.post_count
    @@post_total
  end
end