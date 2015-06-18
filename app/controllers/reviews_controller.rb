class ReviewsController < ApplicationController

  def show
    @review = Review..find(params[:id])
  end

  def new
    @review  = Restaurant.new
  end

  def edit
    @review  = Review..find(params[:id])
  end

  def create
    @review  = Review.new(restaurant_params)
    @review .save

     redirect_to review_path(@review )
  end

  def update
    @review  = Review..find(params[:id])
    @review .update(restaurant_params)

     redirect_to review_path(@review)
  end


  def destroy
    @review  = Review..find(params[:id])
    @review .destroy
  end

  private

  def review_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:review).permit(:name, :address)
  end


end
