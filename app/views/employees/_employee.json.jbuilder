json.extract! employee, :id, :FirstName, :LastName, :PhoneNumber, :created_at, :updated_at
json.url employee_url(employee, format: :json)
