class ActivitiesController < ApplicationController
  def create
    @activity = Activity.new(activity_params)
    
    if @activity.save
      render json: @activity, status: :created  # Respond with the created activity
    else
      render json: @activity.errors, status: :unprocessable_entity  # Respond with errors
    end
  end

  private

  def activity_params
    # Only allow specific parameters to be passed through
    params.require(:activity).permit(:title, :description, :location, :image_url)
  end
end