require_relative './artist.rb'
require_relative './author.rb'
require_relative './post.rb'
require_relative './song.rb'
require 'pry'

def reload!
  load './artist.rb'
  load './author.rb'
  load './post.rb'
  load './song.rb'
end

# adele = Artist.new("Adele")
# hello = Song.new("Hello")
# goodbye = Song.new("Goodbye")
# adele.add_song(hello)
# queen = Artist.new("Queen")
# boho = Song.new("Bohemien Rapsody")
# rock_you = Song.new("We will Rock You")
# queen.add_song(rock_you)

# task :console
 binding.pry
adele.name

# end