class CanvasQuestionBController < ApplicationController
  def new
      @canvas_question_b = CanvasQuestionB.all
    end
end
