require 'pry'

class Artist

  attr_accessor :name

  # @@song_count = 0

  def songs
    Song.all.select {|song| song.artist == self}
    # Song.all.each do |song|
    #   if song.artist == self
    #     @songs << song
    #   end
    # end
  end

  def initialize(name)
    @name = name
    @songs = []
   end

   def add_song(song)
     @songs << song
     song.artist = self
    #  @@song_count += 1
   end

   def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
   end

   def self.song_count
     Song.all.count
    # @@song_count     (not sure why this method is not working)
   end

end
