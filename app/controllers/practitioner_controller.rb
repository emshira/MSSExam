class PractitionerController < ApplicationController
  belongs_to :patient
  has_many :patients
end
