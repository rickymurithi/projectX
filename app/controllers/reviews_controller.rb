class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews, status: :ok
    end

    def show
        review = Review.find_by(id: params[:id])
        render json: review, status: :ok
    end

    def destroy
        review = Review.find_by(id: params[:id])
        review.destroy
        head :no_content
    end
    
    def update
        review = Review.find_by(id: params[:id])
        review.update!(review_params)
        render json: review, status: :ok
    end

    def create
        review = Review.create(review_params)
        if review
            render json: review, status: :created
        else
            render json: {error: "creation was not successsful"}, status: :not_found
        end
    end


    private 

    def review_params
        params.permit(:product_id, :user_id, :name, :description)
    end
end
