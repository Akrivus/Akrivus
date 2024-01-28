class StoriesController < ApplicationController
  before_action :set_story, only: %i[ show edit update destroy ]

  # GET /stories
  def index
    @stories = Story.all
  end

  # GET /stories/1
  def show

  end

  # POST /stories
  def create
    head :no_content, status: :method_not_allowed
  end

  # PATCH /stories/1
  def update
    head :no_content, status: :method_not_allowed
  end

  # DELETE /stories/1
  def destroy
    head :no_content, status: :method_not_allowed
  end

  private
    def set_story
      @story = Story.find(params[:id])
    end

    def story_params
      params.require(:story).permit(:title, :content, :experience_id)
    end
end
