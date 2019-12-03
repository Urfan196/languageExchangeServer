class AvailabilitiesController < ApplicationController
  def index
    availabilities = Availability.all 
    render json: availabilities
  end

  def show
    availability = Availability.find(params[:id]) 
    render json: availability
  end

  def create
    availability = Availability.new(availability_params)
    if availability.save
      render json: availability
    else
      render json: {error: "Something went wrong"}
    end
  end

  def update
    availability = Availability.find(params[:id])
    if availability.update
      render json: availability
    else
      render json: {error: "Something went wrong"}
    end
  end

  def destroy
    availability = Availability.find(params[:id])
    if availability.destroy
      render json: {message: "Successfully deleted availability"}
    else
      render json: {error: "Something went wrong"}
    end
  end

  private

  def availability_params
    params.require(:availability).permit(:user_id, :sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :start_time, :end_time)
  end
end
