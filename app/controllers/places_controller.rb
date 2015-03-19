class PlacesController < ApplicationController
	before_action :places_params, only: [:create]

	def index
		@place = Place.all
	end

	def new
		@place = Place.new
	end

	def show
		@place = Place.find(params[:id])
	end

	def create
		@place = Place.new(places_params)

		if @place.save
			redirect_to places_path, notice: "Creado"
		else
			render "new", notice: "Danm"
		end
	end

  private

  def places_params
  	params.require(:place).permit(:name, :adress, :longitude, :latitude, :description, :city, :website, :avatar, :background, :openhour)
  end
end
