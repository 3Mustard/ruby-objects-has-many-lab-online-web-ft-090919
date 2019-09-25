class Author 
  attr_accessor :name
  @@posts = 1
  
  def initialize(name)
    @name = name 
  end
  
  def posts
    Post.all.select {|post| post.author.name == self.name}
  end 
  
  def add_post(post)
    post.author = self
  end 
  
  def add_post_by_title(title) 
    new_post = Post.new(title)
    new_post.author = self 
    
  end 
  
  def self.post_count
    @@post_count
  end 
end 
