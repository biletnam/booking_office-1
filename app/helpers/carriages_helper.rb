module CarriagesHelper

  def calculate_seats carriages, type_seats
    seats = 0
    carriages.each do |carriage|
      case type_seats
      when :upper
        seats += carriage.upper_seats
      when :lower
        seats += carriage.lower_seats
      end
    end
    seats
  end
end
