class ReviewsController < ApplicationController
    class ReviewsController < ApplicationController
        before_action :set_review, only: [:show, :edit, :update, :destroy]
      
        def show
          @film = Film.find(params[:id])
          @review = Review.find(params[:id])
        end
      
        def new
          @review = Review.new
        end
      
        def edit
           @film = Film.find(params[:film_id])
           @review = Review.find(params[:id])
        end
      
        def create
          @film = Film.find(params[:film_id])
          @review = @film.reviews.build(params[:review])
      
          if @review.save
            flash[:notice] = 'Review was successfully created.'
            redirect_to @film
          else
            flash[:notice] = "Error creating review: #{@review.errors}"
            redirect_to @film
          end
        end
      
        def update
          @film = Film.find(params[:film_id])
          @review = Review.find(params[:id])
      
          if @review.update_attributes(params[:review])
            flash[:notice] = "Review updated"
            redirect_to @review
          else
            flash[:error] = "There was an error updating your review"
            redirect_to @film
          end
        end
      
        def destroy
          @film = Film.find(params[:film_id])
          @review = Review.find(params[:id])
          @review.destroy
          redirect_to(@review.post)
        end
      
        private
      
          def set_review
            @review = Review.find(params[:id])
          end
      
          def review_params
            params.require(:review).permit(:first_name, :last_name, :rate, :description, :content, :film_id)
          end
    end
end
