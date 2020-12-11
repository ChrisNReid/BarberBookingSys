json.extract! reservation, :id, :user_id, :Name, :StartTime, :EndTime, :employee_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
