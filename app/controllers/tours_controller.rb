class ToursController < ApplicationController

    def index
        tour= Tour.all
        render json: tour ,status: :ok 
    end

    def show
        tour = Tour.find_by(params[:id])
        render json: tour, status: :found
    end

    def update
        tour=Tour.find_by(params[:id])
        tour.update(tour_params)
        render json: tour, status: :ok
    end

    def create
        tour=Tour.create(tour_params)
        render json: tour,status: :ok
    end

    def destroy
        tour=Tour.find_by(params[:id])
        tour.destroy()
    end

    private
    def tour_params
        params.permit(:image, :title,:city,:distance,:price,:maxGroupSize,:description,:rating,:featured)
    end
end
