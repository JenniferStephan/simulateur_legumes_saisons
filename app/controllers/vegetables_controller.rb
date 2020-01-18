class VegetablesController < ApplicationController
before_action :set_vege, only: [:show, :edit, :update]

  def new
    @simul = Vegetable.new
  end

  def create
  end

  def index
    @veges = Vegetable.all
  end

  private

private

  def set_vege
   @vege = Vegetable.find(params[:id])
  end

  def veges_params
    params.require(:vegetable).permit(:label, :months)
  end

end
