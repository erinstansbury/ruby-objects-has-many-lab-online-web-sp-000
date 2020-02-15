class Author
  attr_accessor :name
  @posts = []
  @!post_count = 0

  def initialized(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
  end

end
