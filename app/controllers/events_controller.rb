class EventsController < ApplicationController
  
  before_action :events_params, only: [:create]
  #before_action :get_event, [:show]
  #before_action :get_place, [:show]

  def index
  	@event = Event.all
  end

 def show
    @event = Event.find(get_event)

  end

  def new 
  	@event = Event.new
  end

  def create
    puts "params >> #{events_params.inspect}"
      @event = Event.new(events_params)
    puts "event >> #{@event.inspect}"

    if @event.save
        redirect_to  events_path, notice: 'evento almacenado'
      else
        render 'events#index'
    end
  end

  private
  def events_params
    params.require(:event).permit(:website, :city,:whybuy,:moreinfo,:title,:description, :datestart, :dateend, :hourstart, :hourend, :price, :avatar, :background,:wherebuy, :place_ids => [:name, :adress] )
  end

  def get_event
    @event = Event.find(params[:id])
  end

  def get_place
    @place = Place.find(params[:id])
  end
end
