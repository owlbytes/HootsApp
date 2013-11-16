class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :show_session
  
  def show_session 
    logger.info "SESSION CONTAINS: #{user_session}" 
  end

end
