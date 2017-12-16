class AddsIntroToQuestions < ActiveRecord::Migration[5.1]
  def up
    add_column :questions, :intro, :string
  end

  def down
    remove_column :questions, :intro, :string
  end
end
