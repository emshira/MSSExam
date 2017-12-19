class AddPatientToPractitioner < ActiveRecord::Migration[5.1]
  def change
    add_column :practitioners, :patient, :string
    add_reference :practitioners, :practitioner, foreign_key: true
  end
end
