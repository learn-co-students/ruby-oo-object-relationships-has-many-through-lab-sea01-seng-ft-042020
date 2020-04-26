require 'pry'
class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end
    def save
        @@all << self
    end
    def new_song(name,genre)
        Song.new(name,self,genre)
    end
    def songs
        Song.all.select {|songs|songs.artist==self}
    end
    def genres
        my_genres = []
        # use .select or .filter here vv
        Song.all.each do |songs|
            if songs.artist==self
                my_genres << songs.genre
            end
        end
        my_genres
    end
    def self.all
        @@all
    end
end
# binding.pry
0