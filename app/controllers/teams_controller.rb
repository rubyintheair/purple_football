class TeamsController < ApplicationController
  def index 
  end 

  def new 
  end 

  def create 
    @team = Team.new(team_params)
    if @team.save 
      redirect_to root_path
    else 
      redirect_to new_team_path
    end 
  end 

  def team_params
    params.require(:team).permit(:name)
  end 

end
