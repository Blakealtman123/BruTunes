class ArtistsController < ApplicationController
def index
		@artists = Artist.order(likes: :desc)
	end

	def show #Ask Erica Tomorrow
		@artist = Artist.find params[:id]
	end

	def new
		@artist = Artist.new
	end

	def create
    	@artist = Artist.new(artist_params)
 
    	if @artist.save
      		redirect_to @artist
    	else
      		render :new
    	end
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
    	@artist = Artist.find(params[:id])
 
    	if @artist.update(artist_params)
      		redirect_to @artist
    	else
      		render :edit
    	end
	end

  def like
    @artist = Artist.find(params[:id])
    @artist.liked!
    @artist.save
    redirect_to :back
  end
 

	def destroy
    	@artist = Artist.find(params[:id])
    	@artist.destroy
    	redirect_to artists_path
  	end
 
  private
    def artist_params
      params.require(:artist).permit(:name)
    end
end

