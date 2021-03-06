class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
    rescue ActiveRecord::RecordNotFound
  end

  def authenticate
    return if logged_in?
    redirect_to card_loan_path
  end

end