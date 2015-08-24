class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_cart

  protected

  def set_cart
    if current_user
      puts "Hi current_user."
      @cart = current_user.cart
    elsif session[:cart_id]
      puts "Hi session."
      @cart = Cart.find(session[:cart_id])
    else
      puts "Hi else."
      @cart = Cart.create
      session[:cart_id] = @cart.id
      @cart.save!
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :username, :role, :full_name, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :username, :role, :full_name, :password, :password_confirmation) }
  end

end
