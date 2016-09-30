require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, genre_count|
      genre_count[genre] = @@genres.count(genre)
    end
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist, artist_count|
      artist_count[artist] = @@artists.count(artist)
    end
  end
end
