require 'test_helper'

class EmployeesEmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employees_email = employees_emails(:one)
  end

  test "should get index" do
    get employees_emails_url
    assert_response :success
  end

  test "should get new" do
    get new_employees_email_url
    assert_response :success
  end

  test "should create employees_email" do
    assert_difference('EmployeesEmail.count') do
      post employees_emails_url, params: { employees_email: { EmpEmail: @employees_email.EmpEmail, Employees_id: @employees_email.Employees_id } }
    end

    assert_redirected_to employees_email_url(EmployeesEmail.last)
  end

  test "should show employees_email" do
    get employees_email_url(@employees_email)
    assert_response :success
  end

  test "should get edit" do
    get edit_employees_email_url(@employees_email)
    assert_response :success
  end

  test "should update employees_email" do
    patch employees_email_url(@employees_email), params: { employees_email: { EmpEmail: @employees_email.EmpEmail, Employees_id: @employees_email.Employees_id } }
    assert_redirected_to employees_email_url(@employees_email)
  end

  test "should destroy employees_email" do
    assert_difference('EmployeesEmail.count', -1) do
      delete employees_email_url(@employees_email)
    end

    assert_redirected_to employees_emails_url
  end
end
