class DriversController < ApplicationController
  def index
    if params[:resort]
      @drivers = Driver.where(resort: params[:resort])
      render json: @drivers

    elsif params[:pass]
      @drivers = Driver.where(pass: params[:pass])
      render json: @drivers

    elsif params[:date]
      @drivers = Driver.where(date: params[:date])
      render json: @drivers

    else
      @drivers = Driver.all 
      render json: @drivers
    end
  end

  def show
    @driver = Driver.find(params[:id])

    render json: @driver, inlcude: [:rides]
  end

  def create 
    @driver = Driver.create(
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

end
