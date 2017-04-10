class AddIndexToRailwayStationsRoutes < ActiveRecord::Migration[5.0]
  def change
    add_index :railway_stations_routes, :route_id
  end
end
