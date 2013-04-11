class UserRunData < ActiveRecord::Base
  attr_accessible :timestamp
  belongs_to :stairway
end
