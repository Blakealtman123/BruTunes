class AddLikesToSong < ActiveRecord::Migration
  def change
    add_column :songs, :likes, :integer
  end
end
