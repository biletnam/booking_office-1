class Carriage < ActiveRecord::Base
  belongs_to :train, optional: true
  validates :type, presence: true
  validates :number, presence: true
  validates :position, uniqueness: { scope: :train_id }

  before_validation :set_position, if: :train_id?
  
  TYPES = [:CoupeCarriage, :EconomyCarriage, :SoftSeatsCarriage, :LuxeCarriage].freeze

  def self.types
    TYPES
  end

  private

  def set_position
    self.position = Carriage.all.where(train_id: self.train_id).count.next
  end

end
