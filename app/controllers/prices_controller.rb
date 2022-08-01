class PricesController < ApplicationController

    before_action :set_prices, only: [:update]

    def index
        @prices = Price.all
        render json: @prices
    end

    def update
        if @price.update(prices_params)
            render json: @price
        else
            render json: @price.errors, status: :unprocessable_entity
        end
    end

    private

    def set_prices
        @price = Price.find(params[:id])
    end

    def prices_params
        params.permit(:price, :id)
    end

end
