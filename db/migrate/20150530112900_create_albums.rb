class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :year
      t.string :picture

      t.timestamps null: false
    end
  end
end