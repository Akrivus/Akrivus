class ExperiencesController < ApplicationController
  before_action :set_experience, only: %i[ show edit update destroy ]

  # GET /experiences
  def index
    @experiences = Experience.all
  end

  # GET /experiences/1
  def show

  end

  # POST /experiences
  def create
    @experience = Experience.new(experience_params)

    respond_to do |format|
      if @experience.save
        render :show, status: :created, location: @experience
      else
        render json: @experience.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH /experiences/1
  def update
    respond_to do |format|
      if @experience.update(experience_params)
        render :show, status: :ok, location: @experience
      else
        render json: @experience.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /experiences/1
  def destroy
    @experience.destroy!
    head :no_content
  end

  private
    def set_experience
      @experience = Experience.find(params[:id])
    end

    def experience_params
      params.require(:experience).permit(:category, :title, :name, :location, :content, :started_at, :ended_at)
    end
end
