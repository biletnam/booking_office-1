class LuxeCarriage < Carriage
  validates :lower_seats, inclusion: { in: 0..19 }  
end