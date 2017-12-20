json.extract! patient, :id, :first_name, :last_name, :date_of_birth, :gender, :reason_for_visit, :insurance, :policy_number, :telephone, :address, :email, :created_at, :updated_at
json.url patient_url(patient, format: :json)
