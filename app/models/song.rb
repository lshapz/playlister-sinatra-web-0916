class Song < ActiveRecord::Base
  belongs_to :artist 
  #has_many :songs
  has_many :song_genres
  has_many :genres, through: :song_genre


  def slug
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    Song.all.find{|song| song.slug == slug}
  end

# def song_genres
#   INSERT INTO genre_songs (genre_id, song_id) VALUES (self.id, genre)
# end 

end 