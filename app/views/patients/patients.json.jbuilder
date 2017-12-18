json.extract! pt, :id, :first_name, :last_name, :date_of_birth, :gender, :reason_for_visit, :insurance, :policy_number, :telephone, :address, :email, :created_at, :updated_at
json.url pt_url(pt, format: :json)
