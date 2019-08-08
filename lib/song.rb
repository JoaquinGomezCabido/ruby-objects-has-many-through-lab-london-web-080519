class Song
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    attr_reader :name, :artist, :genre
end