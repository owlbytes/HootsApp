class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :show_session
  
  def show_session 
    logger.info "SESSION CONTAINS: #{user_session}" 
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || posts_path
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: "You are not allowed to do this"
  end 

end
