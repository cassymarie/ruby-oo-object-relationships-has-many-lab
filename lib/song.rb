
require_relative './artist.rb'
# require 'pry'

class Song
attr_accessor :name, :artist_name
@@all = []

     def initialize(name)
          @name = name
          self.class.all << self
     end
     
     def self.all
          @@all
     end

     def artist=(artist)
          @artist = artist
          @artist.songs << self
     end

     def artist
          @artist
     end

     def artist_name
          if @artist != nil 
               @artist.name
          end
     end
end