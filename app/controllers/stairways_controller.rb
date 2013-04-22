class StairwaysController < ApplicationController
  protect_from_forgery
  
  def index
    @stairways = Stairway.all.sort_by { |s| s.stairs || 0 }.reverse
    @json = Stairway.all.to_gmaps4rails do |stairway, marker|
    marker.infowindow render_to_string(:partial => "/stairways/infowindow", :locals => { :stairway => stairway})
      marker.json({ :description => stairway.description})
    end
  end
end
