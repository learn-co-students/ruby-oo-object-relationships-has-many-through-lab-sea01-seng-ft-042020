require 'pry'
class Genre
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end
    def save
        @@all << self
    end
    def songs
        # iterate through all song objects
        # if an object genre == self (rap), return that song object
        # want to return an array of all matching song objects
        # binding.pry
        my_songs = []
        Song.all.collect do |song|
            if song.genre==self
                my_songs << song
            end
        end
        my_songs
    end
    def artists
        self.songs.collect do |song|
            song.artist
        end
    end
    def self.all
        @@all
    end
end