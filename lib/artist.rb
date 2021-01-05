class Artist 
    attr_reader :name

    @@artists = []

    def initialize(name)
        @name = name
        save()
    end

    def save
        @@artists << self 
    end

    def self.all
        @@artists
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        songs().map {|song| song.genre}
    end

    def new_song(name, genre)
        name = Song.new(name, self, genre)
        name
    end
end 
