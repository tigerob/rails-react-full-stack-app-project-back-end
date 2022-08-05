class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        @users = User.all

        render json: @users
    end

    def update
        if @user.update(user_params)
            render json: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

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
            render json: {username: @user.username, jwt: auth_token.token, is_admin: @user.is_admin }, status: 200
        else
            render json: {error: "Invalid email or password"}
        end
    end

    def show
        if @user
            render json: @user
        else
            render json: { error: 'User not found' }, status: 404
        end
    end

    def destroy
        @user.destroy
    end

    private
    def user_params
        params.permit(:username, :email, :password, :password_confirmation, :is_admin, :id )
    end

    def set_user
        @user = User.find(params[:id])
    end

end
