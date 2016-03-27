class JobStatus < ActiveRecord::Base
    has_many :recommendations
end
