class AddCoverToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :cover, :string
  end
end
