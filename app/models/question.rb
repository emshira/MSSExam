class Question < ApplicationRecord
  belongs_to :subject
  belongs_to :practitioners
  belongs_to :patients

  has_one :canvas_question_a
  has_one :canvas_question_b


end
