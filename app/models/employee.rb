class Employee < ActiveRecord::Base
  has_many :recommendations
  accepts_nested_attributes_for :recommendations
end
