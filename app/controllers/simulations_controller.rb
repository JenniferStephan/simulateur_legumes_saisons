class SimulationsController < ApplicationController

before_action :set_simulation, only: [:show, :edit, :update, :destroy]

  def new
    @simulation = Simulation.new
  end

  def create
    @simulation = Simulation.new(simulation_params)
    @simulation.ask_month = params["simulation"]["ask_month"]
    @simulation.ask_vege = params["simulation"]["activity_ids"][1]
    @simulation.save

    render :show
  end

  def index
    @simulations = Simulation.all
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def set_simulation
    @simulation = Simulation.find(params[:id])
  end

  def simulation_params
    params.require(:simulation).permit(:ask_month, :ask_vege, :answer)
  end
end
