json.extract! user, :id, :email, :confirmation_token, :confirmed_at, :confirmation_sent_at, :name, :birthday, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
