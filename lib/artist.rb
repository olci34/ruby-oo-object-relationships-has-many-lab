class Artist
    attr_accessor :name

    def initialize(name)
        self.name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        self.add_song(song)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end
    
    def self.song_count
        Song.all.count
    end


end