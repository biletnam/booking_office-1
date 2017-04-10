class AddArrivalToRailwayStations < ActiveRecord::Migration[5.0]
  def up
    change_column :railway_stations, :arrival, :datetime
    change_column :railway_stations, :departure, :datetime
  end

  def down
    change_column :railway_stations, :arrival, :date
    change_column :railway_stations, :departure, :date
  end
end


