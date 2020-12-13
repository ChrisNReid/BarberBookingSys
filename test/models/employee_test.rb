require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save empty employee' do
    employee = Employee.new

    employee.save
    refute employee.valid?
  end

  test 'should save valid emloyee' do
    employee = Employee.new

    employee.FirstName = 'John'
    employee.LastName = 'Doe'
    employee.PhoneNumber = '123456789'

    employee.save
    assert employee.valid?
  end
end
