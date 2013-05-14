class Stairway < ActiveRecord::Base
   has_many :user_runs
   acts_as_gmappable :latitude => "latitude", :longitude => "longitude", :description => "description" 

   def times_ran_by_user user
     if user
       self.user_runs.where(user_id: user.id).count
     end
   end
end
