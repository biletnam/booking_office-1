module CarriagesHelper

  def number_of_coupe_carriages carriages
    @@coupe = 0
    carriages.each do |carriage|
      if carriage.kind == 'coupe'
        @@coupe += 1
      end
    end
    @@coupe
  end

  def number_of_economy_carriages carriages
    @@economy = 0  
    carriages.each do |carriage|
      if carriage.kind == 'economy'
        @@economy += 1
      end
    end
    @@economy
  end

  def number_of_coupe_seats
    @@coupe*36/2
  end

  def number_of_economy_seats
    @@economy*54/2
  end

end
