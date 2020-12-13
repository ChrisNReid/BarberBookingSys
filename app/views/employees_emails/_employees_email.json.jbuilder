json.extract! employees_email, :id, :employee_id, :email, :created_at, :updated_at
json.url employees_email_url(employees_email, format: :json)
