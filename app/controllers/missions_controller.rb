class MissionsController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index, :show, :destroy]
	skip_before_action :authenticate_asso!, only: [:index, :show, :destroy]
	before_action :find_mission, only: [:show, :edit, :update, :destroy]

  def index
  	@missions = Mission.all
  end

  def show
  end

  def new
  	@mission = Mission.new
  end

  def create
  	@mission = Mission.new(mission_params)
  	@mission.asso = current_asso
  	if @mission.save
  		redirect_to @mission
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	if @mission.update(mission_params)
  		redirect_to @mission
  	else
  		render :edit
  	end
  end

  def destroy
  	@mission.destroy
  	redirect_to missions_path
  end

  private 

  def mission_params
  	params.require(:mission).permit(:title, :description)
  end

  def find_mission
  	@mission = Mission.find(params[:id])
  end
end
