require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []


    def count= count
        @@count = count
    end

    def self.count
        @@count 
    end

    def artists= new_artist_array
        @@artists = new_artist_array
    end

    def self.artists
        @@artists.uniq
    end

    def genres= new_genres_array
        @@genres = new_genres_array

    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each do |e|
            unless hash.keys.include?(e)
            hash[e] = 1
            else hash[e] = hash[e] + 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |e|
            unless hash.keys.include?(e)
            hash[e] = 1
            else hash[e] = hash[e] + 1
            end
        end
        hash
    end


    


    def initialize name, artist, genre
    self.count= @@count + 1
    self.genres= @@genres.push(genre)
    self.artists= @@artists.push(artist)

    @name = name
    @artist = artist
    @genre = genre

    end

end

anthem = Song.new 'anthem', 'buster', 'country'
fish = Song.new 'fish', 'goose', 'house'
chaos = Song.new 'chaos', 'goose', 'house'
binding.pry

