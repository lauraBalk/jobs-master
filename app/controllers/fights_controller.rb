class FightsController < ApplicationController
  def create
  end

  def new
    @fight = Fight.new
    @fight.fight_heros.build()
    @fight.fight_heros.build()
  end

  def create 
    @fight= Fight.new(form_params)
    if @fight.save
      redirect_to root_path
    else
      byebug
      render :new
    end
  end

  def index
    @fights = Fight.all
  end

   private
  
  def form_params
    params.fetch(:fight).permit(fight_heros_attributes: [:hero_id, :weapon_id])
  end

end
