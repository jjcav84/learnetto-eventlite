class EventsController < ApplicationController
  def index
<<<<<<< HEAD
=======
    @events = Event.order('start_datetime ASC')
  end
  def create
    @event = Event.new(event_params)
    if @event.save
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  private
  def event_params
    params.require(:event).permit(:title, :start_datetime, :location)
>>>>>>> dev
  end
end