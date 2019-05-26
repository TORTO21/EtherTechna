class Api::StoriesController < ApplicationController
  before_action :ensure_logged_in, only: %i[create update destroy]
  
  def index
    if params[:user_id]
      @user = User.find(params[:user_id])
      @stories = @user.stories
      render :index
    else
      @stories = Story.all.includes(:author)
      render :index
    end
  end

  def show
    @story = Story.find(params[:id])
    render :show
  end

  def create
    @story = Story.new(story_params)
    @story.author_id = current_user.id
    if @story.save
      render :show, notice: 'Story successfully created.', status: 201
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  def update
    @story = Story.find(params[:id])
    if @story.author_id == current_user.id && @story.update(story_params)
      render :show, notice: 'Story successfully updated.', status: 302
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  def destroy
    @story = Story.find(params[:id])
    if @story.destroy
      render json: ['Story successfully deleted.'], status: 200
    else
      render json: ['Not possible to delete Story.'], status: 422
    end
  end

  private
  
  def story_params
    params.require(:story).permit(:title, :body, :image)
  end
end
