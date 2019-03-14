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
  @@genres << @genre 
  @@artists << @artist
  @@count += 1 
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
   genres = {}
   
    @@genres.each do |genre|
      if genres[genre] 
        #binding.pry
       genres[genre] += 1 
      else
        genres[genre] = 1
   binding.pry
      end 
    end
    genres
    end
  

  def self.artists_count
    artists = {}
  end
    















  
  
  
end 