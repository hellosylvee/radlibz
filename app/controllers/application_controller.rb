class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    #find current based on user in the sessions
    if session[:user_id]
      @user ||= User.find(session[:user_id])
    end
  end
end
