class RidersController < ApplicationController
    def show
        @rider = Rider.find(params[:id])
    end

    def new
        @rider = Rider.new
    end

    def create
        byebug
        @rider = Rider.create(rider_params)
        redirect_to rider_path(@rider)
    end

    def edit
        @rider = Rider.find(params[:id])
    end

    def update
        @rider = Rider.find(params[:id])
        @rider.update(rider_params)  
        redirect_to rider_path(@rider)
    end

    def rider_params
        params.require(:rider).permit(:name, rollercoaster_ids: [])
    end
end