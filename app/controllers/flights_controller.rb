class FlightsController < ApplicationController
  def index
    @flights = Flight.where(arrival_airport_id: params[:arrival_airport], departure_airport_id: params[:departure_airport], start_date: params[:start_date])

    @num_passengers = params[:num_passengers]

    render :index
  end

  def new
  end

  def create
  end
end
