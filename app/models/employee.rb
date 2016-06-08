class Employee < ActiveRecord::Base
  belongs_to :department
  validates :employee_number, :department, :email, :phone_number, presence: true
end
