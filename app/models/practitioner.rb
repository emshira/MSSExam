class Practitioner < ApplicationRecord
  has_secure_password

  # belongs_to :patient
  # has_many :patients
end
