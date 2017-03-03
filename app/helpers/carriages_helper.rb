module CarriagesHelper

 def carriages_count(train, carriage_kind)
   train.carriages.where(kind: carriage_kind).count
 end

 def calculate_seats(train, carriage_kind, seats_type)
   train.carriages.where(kind: carriage_kind).sum(seats_type)
 end
end
