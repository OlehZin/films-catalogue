class ApplicationController < ActionController::Base
    include Pundit
  protect_from_forgery
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_upadate, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :avatar])
  
  end
end