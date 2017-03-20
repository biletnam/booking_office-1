module TrainsHelper
  def show_carriages(train)
    content_tag(:p, class: "carriages") do
      train.carriages.each do |carriage|
        concat(link_to("#{carriage.number}", sti_carriage_path(carriage.type, carriage)))
        concat tag(:br)
    end
   end
  end
end



