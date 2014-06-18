class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    	@current_user ||= session[:user_id] && User.find(session[:user_id])
    	@betting_pool ||= session[:last_betting_pool_id] && BettingPool.find(session[:last_betting_pool_id])
  end

  

end
