class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def new
		@event = current_user.events.build
	end

	def create
		@event = current_user.events.build(event_params)
		@event.save
		redirect_to '/events/index'
	end

	def show
	end

	private

	def event_params
		params.require(:event).permit(:title, :date, :local, :description)
	end

end
