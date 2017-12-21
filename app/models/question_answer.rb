class QuestionAnswer < ApplicationRecord
  belongs_to :question
  has_one :canvas_question_a
  has_one :canvas_question_b
end
