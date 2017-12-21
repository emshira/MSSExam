class AddEmailToPractitioner < ActiveRecord::Migration[5.1]
  def change
    add_column :practitioners, :practitioner, :string
    add_column :practitioners, :email, :string
  end
end
