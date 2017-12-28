class QuestionsController < ApplicationController
  def new
    @questions = Question.all
  end

  def create
    @questions = Question.new(params[:survey])
    if @questions.save
      flash[:notice] = "Successfully created survey."
      redirect_to @questions
    else
      render :action => 'new'
    end

  end


  def show

  end
  def index
    @questions = Questions.all
  end

end
