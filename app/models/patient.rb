class Patient < ApplicationRecord
  belongs_to :practitioner
  # belongs_to :subject
  has_many :questions
  has_many :patient_scores, dependent: :destroy

end
