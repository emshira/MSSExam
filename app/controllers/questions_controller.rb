class QuestionsController < ApplicationController
  def new
    @questions = Question.all
  end

  def create
    @questions = Questions.new(params[:survey])
    if @questions.save
      flash[:notice] = "Successfully created survey."
      redirect_to @questions
    else
      render :action => 'new'
    end

  end

  def show
    @questions = Questions.find_by(params[:id])
  end
  def index
    @questions = Question.all
  end

end
