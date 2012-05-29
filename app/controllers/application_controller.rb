class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :show_sessions_data
  before_filter :current_user
  
  def current_user
    @user = User.find_by_id(session[:uid])
  end
  
  def show_sessions_data
    logger.debug '*' *30
    logger.debug "Session: #{session.inspect}"
    logger.debug '*' *30
  end
end
