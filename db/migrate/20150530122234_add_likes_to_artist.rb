class AddLikesToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :likes, :integer, default: 0
  end
end
