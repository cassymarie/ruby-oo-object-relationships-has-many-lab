require_relative './song.rb'
require 'pry'

class Artist
attr_accessor :name, :songs
@@all = []

     def initialize(name)
          @name = name
          @songs = []
          self.class.all << self
     end

     def add_song(song)
          @songs << song
          song.artist = self
     end

     def add_song_by_name(song)
          new_song = Song.new(song)
          new_song.artist = self
     end

     def self.song_count
          count = 0
          self.all.each{|artist| count += artist.songs.count}
          count - 1
     end

     def self.all 
          @@all
     end
     
end

# adele = Artist.new("Adele")
# hello = Song.new("Hello")

# binding.pry

# adele.name
