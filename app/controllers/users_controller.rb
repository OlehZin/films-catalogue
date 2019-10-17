class UsersController < ApplicationController
    
    before_action :authenticate_user!
    
    def index
        @users = User.all
        authorize @users
    end
    
    def show
        @users = User.find(params[id])
        authorize @users
    end
    
    def  edit
        @users = User.find(params[id])
        authorize @users   
    end

    def update
        @users = User.find(params[id])
         redirect_to @user if @user.update_attributes(user_params)
    end

    def destroy 
        @users = User.find(params[id]).deactivete if current_user.admin?
        @users = User.find(params[id]).destroy if current_user==@user
    end

    private

    def user_params
        params.require(:user).permit(:email)
    end
end


