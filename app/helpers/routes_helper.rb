module RoutesHelper

  def determine_class resource
    if resource.empty?
      'Empty list'
    else
      resource.each do |res|
        case res.class.to_s
        when 'Train'
          concat(content_tag(:li, res.number))
        when 'RailwayStation'
          concat(content_tag(:li, res.title))
        end
      end
    end
  end

end
