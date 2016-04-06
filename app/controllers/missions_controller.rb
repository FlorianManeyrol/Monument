class MissionsController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]
	before_action :find_mission, only: :show

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
  	if @mission.save
  		redirect_to @mission
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def mission_params
  	params.require(:mission).permit(:title, :description)
  end

  def find_mission
  	@mission = Mission.find(params[:id])
  end
end
