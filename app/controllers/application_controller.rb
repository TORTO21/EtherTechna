class ApplicationController < ActionController::Base
  # Allowed in Views:
  helper_method :current_user, :logged_in?
  
  # LCELL
  
  private
  
  def login(user)
    @current_user = user
    session[:session_token] = user.reset_session_token!
  end
  
  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end
  
  def ensure_logged_in
    unless logged_in?
      render json: ['invalid credentials'], status: 401
    end
  end
  
  def logged_in?
    !!current_user
  end
  
  def logout
    current_user.try(:reset_session_token!)
    session[:session_token] = nil
  end
end
