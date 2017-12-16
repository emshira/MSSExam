class AddPractitionerIdToQuestionAnswers < ActiveRecord::Migration[5.1]
  def change
    add_reference :question_answers, :practitioners, foreign_key: true
  end
end
