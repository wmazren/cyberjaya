class ApplicationController < ActionController::Base
  protect_from_forgery

  #rescue_from CanCan::AccessDenied do |exception|
    #redirect_to root_url, :alert => exception.message
  #end

  # redirect to a specific page on successful sign in
  def after_sign_in_path_for(resource)
    return request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end

  # Overwriting the devise sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    # root_path
    new_user_session_path
  end

  def redirect_to(options = {}, response_status = {})
    ::Rails.logger.error("Redirected by #{caller(1).first rescue "unknown"}")
    super(options, response_status)
  end
end
