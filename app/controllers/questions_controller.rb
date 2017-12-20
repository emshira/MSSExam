class QuestionsController < ApplicationController
  # def index
  # end

  def new
    @questions = Question.all
  end

  # def new
  #   @question = Question.new
  # end

end
