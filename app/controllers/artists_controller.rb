class ArtistsController < ApplicationController
	def index
		@artists = Artist.all
	end

	def show
		param = params[:id]
		@albums = Album.where(artist_id: param)
	end
end
