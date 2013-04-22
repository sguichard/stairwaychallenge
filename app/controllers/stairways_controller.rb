class StairwaysController < ApplicationController
  protect_from_forgery
  
  def index
    @stairways = Stairway.all.sort_by { |s| s.stairs || 0 }.reverse
    @json = Stairway.all.to_gmaps4rails
  end
end
