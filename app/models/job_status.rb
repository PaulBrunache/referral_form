class JobStatus < ActiveRecord::Base
    has_many :recommendations
    validates :name, :value, presence: true

end
