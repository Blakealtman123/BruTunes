class CreateArtistAlbumJoinTable < ActiveRecord::Migration
  def change
    create_join_table :artists, :albums do |t|
      # t.index [:artist_id, :album_id]
      # t.index [:album_id, :artist_id]
    end
  end
end
