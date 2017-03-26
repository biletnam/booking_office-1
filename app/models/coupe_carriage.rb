class CoupeCarriage < Carriage
  validates :upper_seats, inclusion: { in: 0..27 }
  validates :lower_seats, inclusion: { in: 0..27 }  
end