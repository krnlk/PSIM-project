json.extract! user_datum, :id, :personals_id, :first_name, :last_name, :login, :password, :email, :created_at, :updated_at
json.url user_datum_url(user_datum, format: :json)
