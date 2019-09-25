class Author 
  attr_accessor :name
  
  def initialize(name)
    @name = name 
  end
  
  def posts
    all_posts = []
    Post.all.each do |post| 
      if post.author.name == self.name 
        all_posts << post
      end 
    end 
    all_posts 
  end 
  
end 

describe "#posts" do
      it "has many posts" do
        expect(betty.posts).to be_a(Array)
        post = Post.new("My Post")
        post.author = betty
        expect(betty.posts).to eq([post])
      end
    end