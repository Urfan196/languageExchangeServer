class LanguagesController < ApplicationController
  skip_before_action :authorized
  
  def index
    languages = Language.all 
    render json: languages
  end

  def show
    language = Language.find(params[:id]) 
    render json: language
  end

  def create
    language = Language.new(language_params)
    if language.save
      render json: language
    else
      render json: {error: "Something went wrong"}
    end
  end

  def update
    language = Language.find(params[:id])
    if language.update
      render json: language
    else
      render json: {error: "Something went wrong"}
    end
  end

  def destroy
    language = Language.find(params[:id])
    if language.destroy
      render json: {message: "Successfully deleted language"}
    else
      render json: {error: "Something went wrong"}
    end
  end

  private

  def language_params
    params.require(:language).permit(:name)
  end
end
