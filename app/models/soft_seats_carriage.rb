class SoftSeatsCarriage < Carriage
  validates :soft_seats, inclusion: { in: 0..64 } 
end