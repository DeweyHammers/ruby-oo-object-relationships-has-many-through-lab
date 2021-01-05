class Song
    attr_reader :name, :artist, :genre

    @@songs = []
   
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        save()
    end

    def save
        @@songs << self
    end

    def self.all
        @@songs
    end
end
