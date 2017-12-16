class SessionsController < ApplicationController

  def new

  end

  def create
    @practitioner = Practitioner.find_by_identification(params[:practitioner][:identification])
    if !!@practitioner && @practitioner.authenticate(params[:practitioner][:password])
      session[:practitioner_id] = @practitioner.id
      redirect_to practitioners_path
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:practitioner_id] = nil
    redirect_to '/login'
  end
end
