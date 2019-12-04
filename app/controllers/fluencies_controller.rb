class FluenciesController < ApplicationController
  skip_before_action :authorized
  def index
    fluencies = Fluency.all 
    render json: fluencies
  end

  def show
    fluency = Fluency.find(params[:id]) 
    render json: fluency
  end

  def create
    fluency = Fluency.new(fluency_params)
    if fluency.save
      render json: fluency
    else
      render json: {error: "Something went wrong"}
    end
  end

  def update
    fluency = Fluency.find(params[:id])
    if fluency.update
      render json: fluency
    else
      render json: {error: "Something went wrong"}
    end
  end

  def destroy
    fluency = Fluency.find(params[:id])
    if fluency.destroy
      render json: {message: "Successfully deleted fluency"}
    else
      render json: {error: "Something went wrong"}
    end
  end

  private

  def fluency_params
    params.require(:fluency).permit(:level, :user_id, :language_id)
  end
end
