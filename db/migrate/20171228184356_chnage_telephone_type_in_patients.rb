class ChnageTelephoneTypeInPatients < ActiveRecord::Migration[5.1]
  def change
    change_column :patients, :telephone, :string
  end
end
