require "pry"

class Author
  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def posts
    #binding.pry
    Post.all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    #binding.pry
    self.add_post(Post.new(title))
  end

  def self.all
    @@all
  end

  def self.post_count
    Post.all.length
  end

end
