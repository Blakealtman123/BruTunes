class WelcomeController < ApplicationController
  def index
    @artists = Artist.order(likes: :desc).limit(5)
    @albums = Album.order(likes: :desc).limit(5)
    @songs = Song.order(likes: :desc).limit(5)
		# @artists = Artist.order(:likes, created_at: :desc).limit(5)
		# @albums = Album.order(:likes, created_at: :desc).limit(5)
		# @songs = Song.order(:likes, created_at: :desc).limit(5)
	end

  def songs
    @songs_all = Song.order(:likes, created_at: :desc)
  end

  def artists
    @artists_all = Artist.order(:likes, created_at: :desc)
  end

  def albums
    @albums_all = Album.order(:likes, created_at: :desc)
  end


 

end
