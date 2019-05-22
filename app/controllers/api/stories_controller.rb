class Api::StoriesController < ApplicationController
  before_action :ensure_logged_in, only: %i[create update destroy]
  
  def index
    debugger
    @stories = Story.all
    render :index
  end

  def show
    @story = Story.find(params[:id])
    render :show
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      render :show, notice: 'Story successfully created.'
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  def update
    @story = Story.find(params[:id])
    if @story.update(story_params)
      render :show, notice: 'Story successfully updated.'
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  def destroy
    @story = Story.find(params[:id])
    if @story.destroy
      render :index, notice: 'Story successfully deleted.'
    else
      render json: ['Not possible to delete Story.'], status: 422
    end
  end

  private
  
  def story_params
    params.require(:story).permit(:title, :body)
  end
end
