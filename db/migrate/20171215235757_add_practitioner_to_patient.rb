class AddPractitionerToPatient < ActiveRecord::Migration[5.1]
  def change
    add_column :practitioners, :patient_id, :integer
    add_index(:practitioners, [:patient_id])
  end
end
