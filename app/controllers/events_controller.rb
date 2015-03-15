class EventsController < ApplicationController
  
<<<<<<< HEAD
  before_action :events_params, only: [:create]

  
=======
  respond_to :html, :json, :xml
  
  def events_params
  	params.require(:events).permit(:litle,:description, :datestart, :dateend, :hourstart, :hourend, :price, :wherebuy)
  end
>>>>>>> 036601b5e726e6f4fb26fc8a973df283f834d474

  def index
  	@event = Event.all
  end

 def show
    @event = Event.find(params[:id])
  end

  def new 
  	@event = Event.new

  end

  def create
<<<<<<< HEAD
    
      @event = Event.create(events_params)
    if @event.save
        redirect_to  events_path, notice: 'evento almacenado'
      else
        render 'events#index'
    end
  end

  private
  def events_params
    params.require(:event).permit(:title,:description, :datestart, :dateend, :hourstart, :hourend, :price, :wherebuy)
=======
  	@event = Event.new(events_params)
	  if @event.save
	    redirect_to events_new_path, notice: "Evento almacenado"
	  else
	    render "new"
	  end
>>>>>>> 036601b5e726e6f4fb26fc8a973df283f834d474
  end
end
