class PractitionersController < ApplicationController
  def index
    @practioners = Practitioner.all
  end

  def show

  end

  def edit

  end

  def new
    @practitioner = Practitioner.new
  end

  def create
    @practitioner = Practitioner.new(params[:practitioner])
    if @practitioner.save
      redirect_to @practitioner
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render :action => "new"
    end
  end

  def destroy

  end

end
