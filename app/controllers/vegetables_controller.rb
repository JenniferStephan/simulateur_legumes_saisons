class VegetablesController < ApplicationController
before_action :set_vege, only: [:show, :edit, :update]

  def new
    @simul = Vegetable.new
  end

  def create_simulation
    # @simulation = Simulation.new(simulation_params)
    # @simulation.activity = params["simulation"]["activity_ids"][1]
    # @simulation.accre = params["simulation"]["accre_ids"][1]  == 'true' ? true : false
    # @simulation.reglementary = params["simulation"]["reglementary_ids"][1]  == 'true' ? true : false
    # @simulation.year_existence = params["simulation"]["year_ids"][1].to_i + 1
    # @simulation.user = current_user
    # @simulation.save

    # redirect_to root_path
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
