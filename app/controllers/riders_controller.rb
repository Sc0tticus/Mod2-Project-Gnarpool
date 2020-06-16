class RidersController < ApplicationController
  
  def index #GET / riders
    @riders = Rider.all 
    render json: @riders
  end

  def show #GET /riders/:id
    @rider = Rider.find(params[:id])
    render json: @rider, inlcude: [:rides]
  end

  def create #POST / riders
    @rider = Rider.create(
        name: params[:name],
        phone: params[:phone],
        email: params[:email],
        date: params[:date],
        time: params[:time],
        resort: params[:resort],
        pass: params[:pass],
        VenMo: params[:VenMo],
    )
    redirect_to 'http://localhost:3001/index.html'
  end

  def update
    @rider = Rider.find(params[:id])
    @rider.update(
      name: params[:name],
        phone: params[:phone],
        email: params[:email],
        date: params[:date],
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
