class RidesController < ApplicationController

  def index #GET / rides
    @rides = Ride.all 
    render json: @rides
  end

  def show # GET / rides/:id
    @ride = Ride.find(params[:id])
    render json: @rider, inlcude: [:riders, :drivers]
  end

  def create #POST /ride
    @ride = Ride.create(Rider_id: params[:Rider_id], Driver_id: params[:Driver_id])
    render json: @ride
  end

  def update
    @ride = Ride.find(params[:id])
    @ride.update(Rider_id: params[:Rider_id], Driver_id: params[:Driver_id])
    render json: @ride
  end

  def destroy
    @ride = Ride.find(parms[:id])
    @ride.destroy
    render json: {message: "Ride #{@ride.id} has been delete!"}
  end


end
