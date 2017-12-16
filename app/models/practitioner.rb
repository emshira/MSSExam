class Practitioner < ApplicationRecord
  belongs_to :patient
  has_many :patients
end
