class ZoosController < ApplicationController
  def index
    @zoos = Zoo.all
  end

  def new

  end

  def show
    @zoo = Zoo.find(params[:id])
  end

  def create
    #render plain: params[:zoo].inspect
    @zoo = Zoo.new(zoo_params)

    @zoo.save
    redirect_to @zoo
  end

  private
  def zoo_params
    params.require(:zoo).permit(:name, :lbs)
  end
end
