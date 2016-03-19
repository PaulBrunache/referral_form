class Recommendation < ActiveRecord::Base
  belongs_to :employee
  belongs_to :position
  belongs_to :JobStatus
end
