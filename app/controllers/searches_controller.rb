class SearchesController < ApplicationController
  before_action :set_railway_station
  
  
  def show
  end
  
  
  private
  
  def set_railway_station
    @railway_stations =  RailwayStation.all
  end
end