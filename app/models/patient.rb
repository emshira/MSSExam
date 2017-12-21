class Patient < ApplicationRecord
  belongs_to :practitioner
  # belongs_to :subject
  has_many :questions

end
