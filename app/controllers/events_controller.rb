class EventsController < ApplicationController
  
  def index
    @event = Event.all
  end

  def new 
    @event = Event.new
    @place = Place.new
  end

  def create
    @event = Event.place.new(events_params)
    if @event.save
      redirect_to places_new_path, notice: "Evento almacenado"
    else
      render "new"
    end
  end

private

  def events_params
  	params.require(:events).permit(:title,:description, :datestart, :dateend, :hourstart, :hourend, :price, :wherebuy)
  end
end
