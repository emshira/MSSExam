class PractitionersController < ApplicationController
  before_action :authorize, except: [:new, :create]

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
    @practitioner = Practitioner.new(practitioner_params)
    if @practitioner.save
      session[:practitioner_id] = @practitioner.id
      redirect_to '/signup'
    else
      redirect_to practitioners_path
    end
  end

  def destroy

  end

  private
    def practitioner_params
      params.require(:practitioner).permit(:identification, :last_name, :first_name, :password, :password_confirmation)
    end

end
