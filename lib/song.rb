class Song 
  
  attr_reader :name, :artist, :genre 

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name,artist,genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@genres << genre 
    @@artists << artist
    @@count += 1
    @@genre_count[genre] = @@genres.each{ |x| x = genre}.length
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
    @@genre_count
  end
    
end








