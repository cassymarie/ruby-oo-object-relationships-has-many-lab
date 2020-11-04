
require_relative './author.rb'
# require 'pry'

class Post
attr_accessor :author_name, :title
@@all = []

     def initialize(title)
          @title = title
          self.class.all << self
     end
     
     def self.all
          @@all
     end

     def author=(author)
          @author = author
          @author.posts << self unless @author.posts.include?(self)
     end
     def author
          @author
     end

     def author_name
          if @author != nil 
               @author.name
          end
     end
end