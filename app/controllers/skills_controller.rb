class SkillsController < ApplicationController
  before_action :set_skill, only: %i[ show edit update destroy ]

  # GET /skills
  def index
    @skills = Skill.all
  end

  # GET /skills/1
  def show

  end

  # POST /skills
  def create
    head :no_content, status: :method_not_allowed
  end

  # PATCH /skills/1
  def update
    head :no_content, status: :method_not_allowed
  end

  # DELETE /skills/1
  def destroy
    head :no_content, status: :method_not_allowed
  end

  private
    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:name, :level, :started_at)
    end
end
