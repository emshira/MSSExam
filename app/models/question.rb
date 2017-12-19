class Question < ApplicationRecord
  belongs_to :subject
  # belongs_to :practitioners


  has_one :canvas_question_a
  has_one :canvas_question_b


end
