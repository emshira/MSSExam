class AddPractitionerToPatient < ActiveRecord::Migration[5.1]
  def change
    add_reference :patients, :patient, foreign_key: true
  end
end
