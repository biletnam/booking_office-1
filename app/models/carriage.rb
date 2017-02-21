class Carriage < ActiveRecord::Base
  belongs_to :train, optional: true
  before_save :set_seats

  def self.kinds
    @@kinds = [:coupe, :economy]
  end

  private
  def set_seats
    case self.kind
    when 'coupe'
      self.seats = 36
    when 'economy'
      self.seats = 54
    end
  end
end
