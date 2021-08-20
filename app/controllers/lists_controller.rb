class ListsController < ApplicationController
    def index
        lists = List.all
        render json: lists, status: 200
    end

    def show
        list = List.find(params[:id])
        render json: list, status: 200
    end
    
    def create
        list = List.create(list_params)
        if list
            render json: list
        else
            render json: {error: 'This list could not be created.'}
    end

    def update
        list = list.find(params[:id])
        list.update(list_params)
        if list
            render json: list
        else
            render json: {error: 'This list could not be edited.'}
        end
    end

    def destroy
        list = List.find(params[:id])
        list.destroy
        render json: {message: 'Event successfully deleted.'}
    end

end


    private
    def list_params
        params.require(:list).permit(:name)
    end 
end