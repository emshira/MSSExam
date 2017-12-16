class CreateQuestionAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :question_answers do |t|
      t.references :question, foreign_key: true
      t.integer :score
      t.string :patient_answer

      t.timestamps
    end
  end
end
