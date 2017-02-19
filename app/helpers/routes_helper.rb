module RoutesHelper

  def determine_class resource
    if resource.empty?
      return 'Empty list'
    else
      resource.each do |res|
        case res.class.to_s
        when 'Train'
          return res.number
        when 'RailwayStation'
          return res.title
        end
      end
    end
  end

end
