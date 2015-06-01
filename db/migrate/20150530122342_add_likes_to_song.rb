class AddLikesToSong < ActiveRecord::Migration
#Ask Erica while default is nil
  def change
    add_column :songs, :likes, :integer, default: 0
  end
end
