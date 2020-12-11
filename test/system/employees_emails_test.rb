require "application_system_test_case"

class EmployeesEmailsTest < ApplicationSystemTestCase
  setup do
    @employees_email = employees_emails(:one)
  end

  test "visiting the index" do
    visit employees_emails_url
    assert_selector "h1", text: "Employees Emails"
  end

  test "creating a Employees email" do
    visit employees_emails_url
    click_on "New Employees Email"

    fill_in "Empemail", with: @employees_email.EmpEmail
    fill_in "Employees", with: @employees_email.Employees_id
    click_on "Create Employees email"

    assert_text "Employees email was successfully created"
    click_on "Back"
  end

  test "updating a Employees email" do
    visit employees_emails_url
    click_on "Edit", match: :first

    fill_in "Empemail", with: @employees_email.EmpEmail
    fill_in "Employees", with: @employees_email.Employees_id
    click_on "Update Employees email"

    assert_text "Employees email was successfully updated"
    click_on "Back"
  end

  test "destroying a Employees email" do
    visit employees_emails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employees email was successfully destroyed"
  end
end
