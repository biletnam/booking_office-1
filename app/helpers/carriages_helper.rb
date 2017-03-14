module CarriagesHelper

 def carriages_count(train, carriage_type)
   train.carriages.where(type: carriage_type).count
 end

 def calculate_seats(train, carriage_type, seats_type)
   train.carriages.where(type: carriage_type).sum(seats_type)
 end
end
