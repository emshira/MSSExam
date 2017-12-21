class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @practitioner = Practitioner.find_by(email: params[:email])
    @practitioner.send_password_reset if @practitioner
    flash[:notice] = 'E-mail sent with password reset instructions.'
    redirect_to login_path
  end

  def index
  end

  def edit
    @practitioner = Practitioner.find_by_password_reset_token!(params[:id])
  end

  def update
    @practitioner = Practitioner.find_by_password_reset_token!(params[:id])
    if @practitioner.password_reset_sent_at < 2.hour.ago
      flash[:notice] = 'Password reset has expired'
      redirect_to new_password_reset_path
    elsif @practitioner.update(practitioner_params)
      flash[:notice] = 'Password has been reset!'
      redirect_to new_session_path
    else
      render :edit
    end
  end

  private
  def practitioner_params
    params.require(:practitioner).permit(:password)
  end
end
