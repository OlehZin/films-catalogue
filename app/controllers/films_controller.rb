class FilmsController < ApplicationController
    
    before_action :authenticate_user!

    def show
        @film = Film.find(params[:id])
    end

    def index
        @films = Film.all
    end

    def fetch_date 
        OmdbClient.instance.all
    end

    def search
        @films_from_api = OmdbClient.instance.search(params[:search_query])
    end
end
# def index
#if params[:search_query].present?
#@films_from_api = OmdbClient.instance.search(paramsilms_from_api = OmdbClient.instance.search(params[:search_query][:search_query])
#end + IMDB id 
#rails set url paramsilms_from_api = OmdbClient.instance.search(params[:search_query])
# v inwomy def refresh_movies
#Film.all.pluck(:imdb_id).each

#def create 
#Review.new(review_params)
#Film.find_by params[imdb_id]
