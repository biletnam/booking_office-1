class Carriage < ActiveRecord::Base
  belongs_to :train, optional: true
  validates :number, presence: true

  KINDS = [:coupe, :economy, :soft_seats, :luxe].freeze

  def self.kinds
    KINDS
  end


  
end
