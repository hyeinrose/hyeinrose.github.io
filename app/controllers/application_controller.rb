class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  
  include SessionsHelper
  
  def authenticate
    redirect_to new_session_path if !user_signed_in?
  end
end
