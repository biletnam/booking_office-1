class Carriage < ActiveRecord::Base
  belongs_to :train, optional: true
  validates :number, presence: true
  validates :index_number, uniqueness: { scope: :train_id }

  before_validation :set_index_number
  
  KINDS = [:coupe, :economy].freeze
  #KINDS = [:coupe, :economy, :soft_seats, :luxe].freeze

  def self.kinds
    KINDS
  end

  private
  def set_index_number
    if self.train_id != nil
      self.index_number = Carriage.all.where(train_id: self.train_id).count
  	end
  end

end
