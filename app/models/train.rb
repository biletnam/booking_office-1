class Train < ApplicationRecord
  belongs_to :route, optional: true
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id, optional: true
  has_many :carriages
  has_many :tickets
  
  def calculate_seats(carriage_type, seats_type)
    self.carriages.where(type: carriage_type).sum(seats_type)
  end

end
