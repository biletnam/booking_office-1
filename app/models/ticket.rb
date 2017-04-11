class Ticket < ActiveRecord::Base
  validates :number, :passenger, :passport, presence: true
  before_validation :set_number

  belongs_to :user
  belongs_to :train
  belongs_to :start_station, class_name: 'RailwayStation', foreign_key: :start_station_id
  belongs_to :end_station, class_name: 'RailwayStation', foreign_key: :end_station_id
  
  after_create :send_buy_notification
  after_destroy :sent_cancel_notification

  def set_number
    self.number = rand(1000).to_s
  end
  
  def route_name
    "#{start_station.title} - #{end_station.title}"  
  end
  
  private
  
  def send_buy_notification
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end
  
  def sent_cancel_notification
    TicketsMailer.delete_ticket(self.user, self).deliver_now
  end

end