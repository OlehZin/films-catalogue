class FilmsController < ApplicationController
    
    before_action :authenticate_user!

    def show
        @film = Film.find(params[:id])
    end

    def index
        @films = Film.all
    end

end
