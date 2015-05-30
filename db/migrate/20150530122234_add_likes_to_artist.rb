class AddLikesToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :likes, :integer
  end
end
