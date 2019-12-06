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
    user_id = current_user.id
    fluency = Fluency.new(fluency_params)
    fluency.user_id = user_id 
    if fluency.save
      render json: fluency
    else
      render json: {error: "Something went wrong"}
    end
  end

  def update
    fluency = Fluency.find(params[:id])
    if fluency.update(fluency_params)
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
    params.require(:fluency).permit(:level, :language_id)
  end
end
