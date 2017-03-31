class Ticket < ActiveRecord::Base
  validates :number, presence: true
  before_validation :set_number

  belongs_to :user
  belongs_to :train
  belongs_to :start_station, class_name: 'RailwayStation', foreign_key: :start_station_id
  belongs_to :end_station, class_name: 'RailwayStation', foreign_key: :end_station_id

  def set_number
    self.number = rand(1000).to_s
  end

end