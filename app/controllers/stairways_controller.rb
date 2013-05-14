class StairwaysController < ApplicationController
  protect_from_forgery
  helper_method :sort_column, :sort_direction
  
  def index
    @stairways = Stairway.order(sort_column + ' ' + sort_direction)
    @user = current_user
    @json = Stairway.all.to_gmaps4rails do |stairway, marker|
      marker.infowindow render_to_string(:partial => "/stairways/infowindow", :locals => { :stairway => stairway})
    end
  end

  private
  def sort_column
    Stairway.column_names.include?(params[:sort]) ? params[:sort] : 'name'
  end

  def sort_direction
    ['asc', 'desc'].include?(params[:direction]) ? params[:direction] : 'asc'
  end
end
