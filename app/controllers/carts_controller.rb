class CartsController < ApplicationController
  before_action :set_cart, only:[:show]

  def show
    @items = @cart.items
  end

  private

  def set_cart
    @cart = Cart.find(session[:cart_id])
  end

end
