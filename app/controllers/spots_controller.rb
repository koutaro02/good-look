class SpotsController < ApplicationController
  def new
    @spot = Spot.new
    @spots = Spot.all
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to 
    else
      
    end
  end

  def create
    
  end
end
