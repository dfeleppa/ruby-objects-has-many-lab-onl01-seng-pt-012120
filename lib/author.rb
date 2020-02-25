class Author
  attr_accessor :name, :posts
  @@all = []
  @@post_count = 0
  
  def initialize(name)
    @name = name 
    @posts = []
    #@@all << self 
  end
  
  def self.all 
    @@all
  end
  

   
  def add_post(post)
    post.artist = self
    @@post_total += 1
    #@posts << post
  end  
  
  def posts 
    Post.all.select do |post|
      post.artist == self
    end
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end