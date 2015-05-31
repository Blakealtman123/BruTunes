class RemoveTimeFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :time, :integer
  end
end
