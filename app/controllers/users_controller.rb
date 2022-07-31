class UsersController < ApplicationController
    def create
        @user = User.new(user_params)
        @user.is_admin = false
        
        if @user.save
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {username: @user.username, jwt: auth_token.token }, status: :created
        else
            print @user.errors.attribute_names
            render json: {error: @user.errors}
        end
    end

    def log_in
        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password])
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {username: @user.username, jwt: auth_token.token }, status: 200
        else
            render json: {error: "Invalid email or password"}
        end
    end

    private
    def user_params
        params.permit(:username, :email, :password, :password_confirmation )
    end

end
