class Artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    attr_reader :name

    def self.all
        @@all
    end

    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        genres_array = []
        self.songs.each do |song|
            genres_array << song.genre
        end
        genres_array
    end
end