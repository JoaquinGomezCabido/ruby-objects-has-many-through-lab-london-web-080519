class Genre
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    attr_reader :name
    
    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        artists_array = []
        self.songs.each do |song|
            artists_array << song.artist
        end
        artists_array
    end
end