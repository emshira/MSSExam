class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :last_name
      t.string :first_name
      t.string :date_of_birth
      t.string :gender
      t.string :reason_for_visit
      t.string :insurance
      t.string :policy_number
      t.integer :telephone
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
