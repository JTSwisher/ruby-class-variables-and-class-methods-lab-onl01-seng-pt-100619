class Song 
  attr_accessor :name, :artist, :genre 

  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end   

  def self.count
    @@count
  end 

  def self.artists
    @@artists.uniq
  end 

  def self.genres 
    @@genres.uniq
  end 

  def self.genre_count
    Hash[@@genres.group_by {|x| x}.map {|k,v| [k,v.count]}]
  end

  def self.artist_count
    Hash[@@artists.group_by {|x| x}.map {|k,v| [k,v.count]}]
  end 
end 