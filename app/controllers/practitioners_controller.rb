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

  def login
    @practitioner = Practitioner.find_by_identification(practitioner_params[:identification])
    byebug
    if !!@practitioner # and @identification.authenticate(practitioner_params[:password])
      session[:practitioner_id] = @practitioner.id
      # redirect_to practioners_path
    else
      render :action => "practitioner_landing"
    end
  end

  def create
    @practitioner = Practitioner.new(practitioner_params)
    if @practitioner.save
      session[:practitioner_id] = @practitioner.id
      redirect_to practioners_path
    else
      render :new
    end
  end

  def destroy

  end

  private
    def practitioner_params
      params.require(:practitioner).permit(:identification, :last_name, :first_name, :password, :password_confirmation)
    end

end
