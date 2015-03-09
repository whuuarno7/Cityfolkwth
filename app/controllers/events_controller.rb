class EventsController < ApplicationController
  
  before_action :events_params, only: [:create]

  

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
    
      @event = Event.create(events_params)
      if @event.save
        redirect_to new_path_event, notice: 'evento almacenado'
      else
        render 'events#index'
    end
  end

  private
  def events_params
    params.require(:events).permit(:title,:description, :datestart, :dateend, :hourstart, :hourend, :price, :wherebuy)
  end
end
