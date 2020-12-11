class EmployeesEmail < ApplicationRecord
  validates :Email, presence:true
  belongs_to :Employees
end
