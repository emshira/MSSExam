class AddsSubjectIdToQuestions < ActiveRecord::Migration[5.1]
    def up
      add_column :questions, :subject_id, :integer
    end

    def down
      remove_column :questions, :subject_id, :integer
    end
  end  
