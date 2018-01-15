class Song 
  
  attr_reader :name, :artist, :genre 

  @@count = 0
  @@genres = []
  
  
  def initialize(name,artist,genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@genres << genre unless @@genres.include?(genre)
    @@count += 1
  end
  
  def self.count 
    @@count 
  end 
  
end