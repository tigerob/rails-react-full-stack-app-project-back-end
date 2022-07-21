class PricesController < ApplicationController
before_action :is_admin, only: [:update]
before_action :auth_params, only: [:update]

    def index
        @prices = Price.all
        render json: @prices
    end

    def update
                @price.update(auth_params)
            if @price.save
                redirect_to "/price", notice: "Your profile has been updated successfully."
            else
                redirect_to "/", alert: "Something went wrong with your changes please try again."
            end
    end

    private

    def is_admin
        unless current_user.is_admin == true
            redirect_to '/', :alert => "Don't have permission!"
        end
    end

    def auth_params
        (params.require(:prices).permit(:price))
    end

end
