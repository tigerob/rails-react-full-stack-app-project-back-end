class BookingsController < ApplicationController
    # before_action :authenticate_user
    before_action :set_booking, only: [:show, :update, :destroy, :mybookings]

    
    def index
        @bookings = Booking.all

        render json: @bookings
    end

    def mybookings
        @bookings = []
            current_user.bookings.order("updated_at DESC").each do |message|
            @bookings << bookings.transform_booking
    end

    render json: @bookings
    end

    def show
        if @booking
            render json: @booking
        else
            render json: { error: 'Booking not found' }, status: 404
        end
    end

    def create
        @booking = current_user.bookings.create(booking_params)
        if @booking.save
            render json: @booking, status: :created
        else
            render json: @booking.errors, status: :unprocessable_entity
        end
    end

    def update
        if @booking.update(booking_params)
            render json: @booking
        else
            render json: @booking.errors, status: :unprocessable_entity
        end
    end

    
    def destroy
        @booking.destroy
    end

    private
    def set_booking
        @booking = Booking.find(params[:id])
    end

    def booking_params
        params.permit(:time, :date, :location, :instrument, :user_id, :username)
    end

    def username 
        
    end

end
