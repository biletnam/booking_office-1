class EconomyCarriage < Carriage
  validates :upper_seats, inclusion: { in: 0..18 }
  validates :lower_seats, inclusion: { in: 0..18 }
  validates :side_upper_seats, inclusion: { in: 0..9 }
  validates :side_lower_seats, inclusion: { in: 0..9 }  
end