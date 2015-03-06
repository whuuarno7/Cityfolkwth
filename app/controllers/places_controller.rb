class PlacesController < ApplicationController

	#before_action :get_event
	#before_action :get_place, except: [:create]


	def events_params
	  	params.require(:Places).permit(:name,:description, :adress, :longitude, :latitud)
	end

	def index
	   @place = Place.all
	end

	def new
		@place = Place.new
	end

 
  def create
  	@place = @event.places.create(events_params)
	  if @place.save
	    redirect_to events_index_path, notice: "Evento almacenado"
	  else
	    render "new"
	  end
  end

  private

  def get_place
  	@place = @event.places.find(params[:id])
  end

  def get_event
  	@event =  Event.find(params[:event_id])
  end
end