json.extract! test_app, :id, :first_name, :last_name, :email, :phone, :telegram, :created_at, :updated_at
json.url test_app_url(test_app, format: :json)
