class Genre
    attr_reader :name

    @@gernes = []

    def initialize(name)
        @name = name
        save()
    end

    def save
        @@gernes << self
    end

    def self.all
        @@gernes
    end 

    def songs
        Song.all.select {|song| song.genre == self}
    end 

    def artists
        songs().map {|song| song.artist}
    end
end
