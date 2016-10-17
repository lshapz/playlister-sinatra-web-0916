class CreateSongsGenres < ActiveRecord::Migration

  def change 
    create_table :song_genres do |t|
      t.integer :song_id
      t.integer :genre_id
    end
  end
#   def change
#     create_table :songs_genres, id: false do |t|
#       t.belongs_to :song, index: true 
#       t.belongs_to :genre, index: true
#     end
  #end 
end
