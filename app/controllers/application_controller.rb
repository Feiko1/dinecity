class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :authenticate_user!   #this is not necesary---we want people to be able ot use our website without signing up
  protect_from_forgery with: :exception
end
