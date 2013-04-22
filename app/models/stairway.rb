class Stairway < ActiveRecord::Base
   has_many :user_runs
   acts_as_gmappable :latitude => "latitude", :longitude => "longitude", :description => "description" 
end
