class Author
  attr_accessor :name
  @posts = []

  def initialized(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.author == self}
  end
end
