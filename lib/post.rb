class Post
  attr_accessor :title :artist
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if author
      self.artist.name
    else
      nil
    end
  end

end
