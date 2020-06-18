class RidersController < ApplicationController
  
  def index #GET / riders
    if params[:resort]
      @riders = Rider.where(resort: params[:resort])
      render json: @riders

    elsif params[:pass]
      @riders = Rider.where(pass: params[:pass])
      render json: @riders

    elsif params[:date]
      @riders = Rider.where(date: params[:date])
      render json: @riders
    else
      @riders = Rider.all 
      render json: @riders, include: [:rides]
    end
  end

  def show #GET /riders/:id
    @rider = Rider.find(params[:id])
    render json: @rider, include: [:drivers, :rides]
  end

  def create #POST / riders
    @rider = Rider.create(
        name: params[:name],
        phone: params[:phone],
        email: params[:email],
        time: params[:time],
        resort: params[:resort],
        pass: params[:pass],
        VenMo: params[:VenMo],
    )
    redirect_to 'http://localhost:3001/driversList.html'
  end

  def update
    @rider = Rider.find(params[:id])
    @rider.update(
      name: params[:name],
        phone: params[:phone],
        email: params[:email],
        time: params[:time],
        resort: params[:resort],
        pass: params[:pass],
        VenMo: params[:VenMo],
    )
  end

  def destroy # delete / rider
    @rider = Rider.find(params[:id])
    @rider.destroy 
    render json: {message: "Rider #{@rider.id} has been deleted!"}
  end
  

end
