module CarriagesHelper

 def carriages_count(train, carriage_type)
   train.carriages.where(type: carriage_type).count
 end

 def calculate_seats(train, carriage_type, seats_type)
   train.carriages.where(type: carriage_type).sum(seats_type)
 end
 
 
 def show_seats(carriage)
   case carriage.type
   when 'CoupeCarriage'
    content_tag(:p, class: "seats" ) do
     concat("Upper: #{carriage.upper_seats}")
     concat tag(:br)
     concat("Lower: #{carriage.lower_seats}")
    end 
   when 'EconomyCarriage'
    content_tag(:p, class: "seats" ) do
     concat("Upper: #{carriage.upper_seats}")
     concat tag(:br)
     concat("Lower: #{carriage.lower_seats}")
     concat tag(:br)
     concat("Side upper: #{carriage.side_upper_seats}")
     concat tag(:br)
     concat("Side lower: #{carriage.side_lower_seats}")
    end     
   when 'SoftSeatsCarriage'
    content_tag(:p, class: "seats" ) do
     concat("Soft: #{carriage.soft_seats}")
    end 
   when 'LuxeCarriage'
    content_tag(:p, class: "seats" ) do
     concat("Lower: #{carriage.lower_seats}")
    end 
   end
 end
 
 
 def sti_carriage_path(type = "carriage", carriage = nil, action = nil)
   send "admin_train_#{format_sti(action, type, carriage)}_path", carriage
 end

 def format_sti(action, type, carriage)
   action || carriage ? "#{format_action(action)}#{type.underscore}" : "#{type.underscore.pluralize}"
 end

 def format_action(action)
   action ? "#{action}_" : ""
 end
 
end