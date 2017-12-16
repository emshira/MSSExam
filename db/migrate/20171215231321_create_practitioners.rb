class CreatePractitioners < ActiveRecord::Migration[5.1]
  def change
    create_table :practitioners do |t|
      t.integer :identification
      t.string :last_name
      t.string :first_name
      t.string :password_digest

      t.timestamps
    end
    add_index :practitioners, :identification, unique: true
  end
end
