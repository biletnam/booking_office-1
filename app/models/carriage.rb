class Carriage < ActiveRecord::Base
  belongs_to :train, optional: true
  validates :upper_seats, inclusion: { in: 0..27 }
  validates :lower_seats, inclusion: { in: 0..27 }

  KINDS = [:coupe, :economy].freeze

  def self.kinds
    KINDS
  end
end
