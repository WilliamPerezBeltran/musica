class ArtistsController < ApplicationController
	def index
		@artists = Artist.all
	end

	def show
		@nombre_artista = Artist.find(params[:id]).name
		param = params[:id]
		@albums = Album.where(artist_id: param)
	end
end
