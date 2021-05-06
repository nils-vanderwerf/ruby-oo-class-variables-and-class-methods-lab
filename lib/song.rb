class Song
        attr_accessor :name, :artist, :genre
        @@count = 0
        @@genres = []
        @@artists = [] 

        def initialize (name, artist, genre)
            @name = name #individial song name
            @artist = artist #individial song artists
            @genre = genre
            @@count += 1 #count of all unique songs
            @@genres << genre #genre array of all artists
            @@artists << artist #all artist array
        end

        def self.count
            @@count
        end

        def self.artists
            @@artists.uniq ##In built method to remove duplicates
        end

    def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
        if artist_count[artist]
            artist_count[artist] += 1 ##artist is current element in the loop
        else
            artist_count[artist] = 1
        end
    end
    artist_count
    end

    def self.genres
        @@genres.uniq 
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1 ##artist is current element in the loop
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end

end