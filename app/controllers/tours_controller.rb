class ToursController < ApplicationController
    skip_before_action :authorized , only:[:index,:search,:show,:create,:update]

    def index
        tour= Tour.all
        render json: tour ,status: :ok 
    end



    def search
        query = params[:query]
        tours = Tour.search_by_title_and_city(query).where('price <= ?', query.to_f).where(featured: true)
        render json: tours
    end



    # def search
    #     tour = Tour.search_by_title_and_city(params[:city])
    #     render json: tour
    # end

    def show
        tour = Tour.find_by(params[:id])
        render json: tour, status: :found
    end

    def update
        tour = Tour.where(id: params[:id]).first
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
        params.permit(:image, :title, :city, :distance, :price, :maxGroupSize, :description, :rating, :featured)
    end
end
