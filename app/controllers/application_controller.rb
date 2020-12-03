class ApplicationController < ActionController::Base
  before_action :initialize_session
  helper_method :cart

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :address, :province_id, :postal_code) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :current_password, :address, :province_id, :postal_code) }
  end

  private

  def initialize_session
    session[:shopping_cart] ||= []
  end

  def cart
    Planet.find(session[:shopping_cart])
  end
end
