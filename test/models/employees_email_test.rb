require 'test_helper'

class EmployeesEmailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @employee = employees(:one)
    @employees_email = employees_emails(:one)
  end

  test 'should not save empty employee email' do
    employees_email = EmployeesEmail.new

    employees_email.save
    refute employees_email.valid?
  end

  test 'should save valid email' do
    employees_email = EmployeesEmail.new

    employees_email.email = 'chris@gmail.com'
    employees_email.employee = @employee

    employees_email.save
    assert employees_email.valid?
  end
end
