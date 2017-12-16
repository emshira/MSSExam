class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_practitioner

  def current_practitioner
    return unless session[:practitioner_id]
    @current_practitioner ||= Practitioner.find(session[:practitioner_id])
  end
end
