class InformaitionsController < ApplicationController
  before_action :set_informaition, only: [:show, :edit, :update, :destroy]
  def index
    @informaitions = Informaition.all
  end

  def new
    @informaition = Informaition.new
    2.times{ @informaition.stations.build}
  end

  def show
  end
  
  def create
    @informaition = Informaition.new(informaition_params)
    if @informaition.save
      redirect_to informaitions_path
    else
      render 'new'
    end
  end
  
  def edit
    1.times{ @informaition.stations.build}
  end

  def update
    if @informaition.update(informaition_params)
      redirect_to informaitions_path
    else
      render 'new'
    end
  end

  def destroy
    @informaition.destroy
    redirect_to informaitions_path
  end
  
  private

  def informaition_params
    params.require(:informaition).permit(:name, :rent, :address, :age, :remark, stations_attributes: [ :id, :route_name, :station_name, :time])
  end

  def set_informaition
    @informaition = Informaition.find(params[:id])
  end
end

