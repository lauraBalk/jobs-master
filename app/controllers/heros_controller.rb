class HerosController < ApplicationController
  def create
  end

  def edit
    @hero = Hero.find(params[:id])
  end

  def update
    @hero = Hero.find(params[:id])
    if @hero.update form_params
      redirect_to root_path
    else
      render :edit
    end
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(form_params)
    if @hero.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @hero = Hero.find(params[:id])
    @hero.destroy
    redirect_to root_path
  end

   private
  
  def form_params
    params.fetch(:hero).permit(:name, :life_points, :attack_points)
  end

end
