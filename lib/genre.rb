class Genre
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name 

        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        #find songs that belong to the genre
        Song.all.select{|song|song.genre == self}

    end

    def artists
        #iterates over the genre's array and collects
        #the artist that owns each song
       songs.map{|song|song.artist}.uniq
    end
end