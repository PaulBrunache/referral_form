class Recommendation < ActiveRecord::Base
  belongs_to :employee
  belongs_to :position
  belongs_to :JobStatus
  validates :name, :phone_number, :email, :position, presence: true

end
