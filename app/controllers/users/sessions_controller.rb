class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]
after_filter :pass_cart_items, only: [:create]

protected

  def pass_cart_items
    unless Cart.find(session[:cart_id]).items.empty?
      @cart = Cart.find(session[:cart_id])
      current_user.cart.items << @cart.items
    end
  end

end
