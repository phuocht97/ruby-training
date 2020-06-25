json.extract! email, :id, :name, :password, :created_at, :updated_at
json.url email_url(email, format: :json)
