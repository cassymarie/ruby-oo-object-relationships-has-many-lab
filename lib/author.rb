
require_relative './post.rb'
# require 'pry'

class Author
attr_accessor :name, :posts
@@all = []

     def initialize(name)
          @name = name
          @posts = []
          self.class.all << self
     end

     def add_post(post)
          @posts << post
          post.author = self if post.author == nil
     end

     def add_post_by_title(title)
          new_post = Post.new(title)
          new_post.author = self
     end

     def self.post_count
          count = 0
          self.all.each{|author| count += author.posts.count}
          count 
     end

     def self.all 
          @@all
     end



end
