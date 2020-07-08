class HospitalsController < ApplicationController
  def index
    @hospital = Hospital.all
  end
  def show
    @hospital = Hospital.find(params[:id])
  end
  def new
    @hospital = Hospital.new
  end
  def create
    # render plain: params[:hospital].inspect
    @hospital = Hospital.new(hospital_params)

    if(@hospital.save)
      redirect_to @hospital
    else
      render 'new'
    end
  end

  def edit
    @hospital = Hospital.find(params[:id])
  end

  def update
    @hospital = Hospital.find(params[:id])

    if(@hospital.update(hospital_params))
      redirect_to @hospital
    else
      render 'edit'
    end
  end

  def destroy
    @hospital = Hospital.find(params[:id])

    @hospital.destroy
    
    redirect_to hospitals_path
  end
  private def hospital_params
    params.require(:hospital).permit(:name, :age)
  end
end
