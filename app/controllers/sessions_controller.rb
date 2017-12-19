class SessionsController < ApplicationController

  def new

  end

  def create
    @practitioner = Practitioner.
    find_by(identification: params[:identification]).
    try(:authenticate, params[:password])

    return render action: 'new' unless @practitioner

    session[:practitioner_id] = @practitioner.id
    redirect_to new_practitioner_path
  end

  def destroy
    session[:practitioner_id] = nil
    redirect_to '/landing'
  end
end
