class RemoveArrivalFromRailwayStations < ActiveRecord::Migration[5.0]
  def change
    remove_column :railway_stations, :arrival, :date
    remove_column :railway_stations, :departure, :date
  end
end
