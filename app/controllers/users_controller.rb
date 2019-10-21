class UsersController < ApplicationController
    
    before_action :authenticate_user!
    
    def index
        @users = User.all
        authorize @users

    end

    def active_user
        @user = User.find(params[:id])
        @user.toggle(:active)
        authorize @user
    end
    
    def show
        @user = User.find(params[id])
        authorize @users
    end
    
    def  edit
        @users = User.find(params[id])
        authorize @user  
    end

    def update
        @user = User.find(params[id])
         redirect_to @user if @user.update_attributes(user_params)
    end

    def destroy 
    
    end

    private

    def user_params
        params.require(:user).permit(:email, :nickname, :avatar)
    end
end


