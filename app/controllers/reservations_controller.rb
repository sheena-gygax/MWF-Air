class ReservationsController < ApplicationController
  
  def new
    if session[:uid].nil?
          redirect_to root_url, notice: "Nice try!"
          return
    end
        
        @reservation = Reservation.new
        @reservation.flight = Flight.find(params[:flight_id])
  end
  
  
  def create
  end
  
  def show
  end
  
  def destroy
  end
  
end
