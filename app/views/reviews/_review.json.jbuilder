json.extract! review, :id, :user_id, :name, :title, :description, :created_at, :updated_at
json.url review_url(review, format: :json)
