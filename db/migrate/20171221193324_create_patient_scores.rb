class CreatePatientScores < ActiveRecord::Migration[5.1]
  def change
    create_table :patient_scores do |t|
      t.integer :total
      t.belongs_to :patient, foreign_key: true

      t.timestamps
    end
  end
end
