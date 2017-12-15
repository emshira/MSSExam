json.extract! practitioner, :id, :identification, :last_name, :first_name, :password_digest, :created_at, :updated_at
json.url practitioner_url(practitioner, format: :json)
