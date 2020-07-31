require 'pry'

class Post 
  
  attr_accessor :name, :author, :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    save
  end
  
  def author_name
    self.author ? self.author.name : nil
  end
  
  binding.pry
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end