class CampersController < ApplicationController

  before_action :find_camper, only: [:show, :edit, :update]

  def index
    @campers = Camper.all
  end

  def show
  end

  def edit
  end

  def new
    @camper = Camper.new
  end

  def create

    @camper = Camper.create(camper_params)

    redirect_to camper_path(@camper)
  end

  def update
  end

  private

  def find_camper
    @camper = Camper.find(params[:id])
  end

  def camper_params
    params.require(:camper).permit(:name, :age)
  end

end
