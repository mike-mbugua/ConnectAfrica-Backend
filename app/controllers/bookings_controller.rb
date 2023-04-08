class BookingsController < ApplicationController
    def index
        book= Booking.all
        render json: book ,status: :ok 
    end

    def show
        book = Booking.find_by(params[:id])
        render json: book, status: :found
    end

    def update
        book=Booking.find_by(params[:id])
        book.update(booking_params)
        render json: book, status: :ok
    end

    def create
        book=Booking.create(booking_params)
        render json: book,status: :ok
    end

    def destroy
        book=Booking.find_by(params[:id])
        book.destroy()
    end

    private
    def booking_params
        params.permit(:fullName, :phone,:date,:guests,:total)
    end
end
