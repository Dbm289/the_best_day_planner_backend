class EventsController < ApplicationController
    def index
        @events = Event.all
        render json: @events, status: 200
    end

    def show
        @event = Event.find(params[:id])
        render json: @event, status: 200
    end

    def create
        @event = Event.create(event_params)
        if @event
            render json: @event
        else
            render json: {error: 'This event could not be created.'}
        end
    end

    def update
        @event = Event.find(params[:id])
        @event.update(event_params)
        if @event
            render json: @event
        else
            render json: {error: 'This event could not be edited.'}
        end
    end

    def destroy
        event = Event.find(params[:id])
        event.destroy
        render json: {message: 'Event successfully deleted.'}
    end

    private

    def event_params
        params.require(:event).permit(:id, :name, :detail, :event_start, :event_end, :list_id)
    end
end
