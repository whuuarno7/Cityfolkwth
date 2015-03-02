class EventsController < ApplicationController
  

  def events_params
  	params.require(:events).permit(:litle,:description, :datestart, :dateend, :hourstart, :hourend, :price, :wherebuy)
  end

  def index
  	@event = Event.all
  end

  def new 
  	@event = Event.new
  end

  def create
  	@event = Event.new(events_params)
	  if @event.save
	    redirect_to events_new_path, notice: "Evento almacenado"
	  else
	    render "new"
	  end
  end
end
