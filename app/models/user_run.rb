class UserRun < ActiveRecord::Base
  attr_accessible :timestamp, :stairway_id, :user_id
  belongs_to :user
  belongs_to :stairway
end
