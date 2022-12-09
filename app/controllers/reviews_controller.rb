class ReviewsController < ApplicationController

  def index 
    reviews = Review.all
    render json: reviews
  end
    
  def show
    review = find_review
    render json:review
  end

  def create
    review = Review.create!(review_param)
    render json:review, status:201
  end

  def update
    review = find_review
    if review
      review.update!(review_param)
      render json: review
    else
      render json: {error: "Review not found"}, status: :not_found
    end
  end

  def destroy
      review = find_review
      review.destroy
      head :no_content
  end

  private

  def find_review
    Review.find_by(id: params[:id])
  end

  def review_param
    params.permit(:user_id, :product_id, :name, :description)
  end
end
