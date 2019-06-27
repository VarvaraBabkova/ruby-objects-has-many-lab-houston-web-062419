class Author
  attr_accessor :name

  def initialize (name)
    @name = name
  end
  def posts
    #@songs
    Post.all.select {|post| post.author == self}
  end
  def add_post (post)
      post.author = self
  end
end
