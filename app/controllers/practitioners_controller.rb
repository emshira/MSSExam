class PractitionersController < ApplicationController
  before_action :authorize, except: [:new, :create, :landing, :landed]

  def index
    @practioners = Practitioner.all
  end

  def show

  end

  def edit

  end

  def landing
    @patient = Patient.find(params[:patient_id])
  end

  def landed
    f = params[:question].map(&:to_i)
     result = f.reduce(&:+)

    patient_score = PatientScore.create(total: result, patient_id: params[:patient_id])
    # redirect_to :landing
    # patient = Patient.find(params[:patient_id])
    # ->routes
    redirect_to "/landing/#{params[:patient_id]}"

  end

  def new
    @practitioner = Practitioner.new
  end

  def create
    @practitioner = Practitioner.new(practitioner_params)
    if @practitioner.save
      session[:practitioner_id] = @practitioner.id
      redirect_to patients_path
    else
      redirect_to new_practitioners_path
    end
  end

  def destroy

  end

  private
    def practitioner_params
      params.require(:practitioner).permit(:identification, :last_name, :first_name, :email, :password, :password_confirmation)
    end

end
