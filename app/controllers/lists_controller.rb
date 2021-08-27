class ListsController < ApplicationController
    def index
        @lists = List.all
        render json: @lists, status: 200
    end

    def show
        @list = List.find(params[:id])
        render json: @list, status: 200
    end
    
    def create
        #binding.pry
        @list = List.create(list_params)
        if @list
            render json: @list
        else
            render json: {error: 'This list could not be created.'}
        end
    end

    def update
        @list = List.find(params[:id])
        @list.update(list_params)
        if @list
            render json: @list
        else
            render json: {error: 'This list could not be edited.'}
        end
    end

    def destroy
        @list = List.find(params[:id])
        @list.destroy
        render json: {message: 'Event successfully deleted.'}
    end


    private
    def list_params
        params.require(:list).permit(:name)
    end 
end