class Question < ApplicationRecord
  belongs_to :subject
  has_one :canvas_question_a
  has_one :canvas_question_b



end
