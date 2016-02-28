class ReviewsController < ApplicationController
  before_action :set_massagesalon

  def index
    render json: {
      meta: {
        count: @massagesalon.reviews.count
      },
      reviews: @massagesalon.reviews.all
    }
   end

  private

  def set_massagesalon
    @massagesalon = Massagesalon.find(params[:massagesalon_id])
  end

  def task_params
    params.require(:review).permit(:reviewer_name, :review , :rating, :massagesalon_id)
  end
end
