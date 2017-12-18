class CanvasQuestionAController < ApplicationController
  def new
    @canvas_question_a = CanvasQuestionA.all
  end
end
