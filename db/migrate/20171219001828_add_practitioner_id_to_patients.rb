class AddPractitionerIdToPatients < ActiveRecord::Migration[5.1]
  def change
    add_reference :patients, :practitioner, foreign_key: true
  end
end
