class StairwaysController < ApplicationController
  protect_from_forgery
  
  def index
    @stairways = Stairway.all.sort_by { |s| s.stairs || 0 }.reverse
  end
end
