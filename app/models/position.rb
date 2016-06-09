class Position < ActiveRecord::Base
    has_many :recommendations
    validates :name, :description, presence: true
end
