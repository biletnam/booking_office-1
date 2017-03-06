class Carriage < ActiveRecord::Base
  belongs_to :train, optional: true
  validates :number, presence: true
  validates :position, uniqueness: { scope: :train_id }

  before_validation :set_position, if: :train_id?
  
  KINDS = [:coupe, :economy, :soft_seats, :luxe].freeze

  def self.kinds
    KINDS
  end

  private

  def set_position
    self.position = Carriage.all.where(train_id: self.train_id).count + 1
  end

end
