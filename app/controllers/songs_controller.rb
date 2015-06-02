class SongsController < ApplicationController
	def index
		@songs = Song.order(likes: :desc)
	end


	def show 
		@song = Song.find params[:id]
	end

	def new
		@song = Song.new
    @album = Album.find(params[:album_id])
    
	end

	def create
    	@album = Album.find(params[:album_id])
      @song = @album.songs.create(song_params)
 
    	if @song.save
      		redirect_to :back #it was @song before
    	else
      		render :new
    	end
	end

	def edit
		@song = Song.find(params[:id])
	end

	def update
    	@song = Song.find(params[:id])
 
    	if @song.update(song_params)
      		redirect_to @song
    	else
      		render :edit
    	end
	end

	def destroy
    	@song = Song.find(params[:id])
    	@song.destroy
    	redirect_to songs_path
  	end

  def like
    @song = Song.find(params[:id])
    @song.liked!
    @song.save
    redirect_to :back
  end
 
  private
    def song_params
      params.require(:song).permit(:name)
    end
end
