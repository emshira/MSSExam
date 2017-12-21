class SessionsController < ApplicationController

  def new

  end

  def create
    @practitioner = Practitioner.find_by_email(params[:practitioner][:email])
    if !!@practitioner && @practitioner.authenticate(params[:practitioner][:password])
      session[:practitioner_id] = @practitioner.id
      redirect_to '/login'
    else
      redirect_to new_practitioner_path
    end
  end

  def destroy
    session[:practitioner_id] = nil
    redirect_to '/landing'
  end
end
