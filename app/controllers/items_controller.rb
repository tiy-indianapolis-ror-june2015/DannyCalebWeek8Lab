class ItemsController < ApplicationController

  def index
    @items = Item.all
    if session[:cart_id].nil?
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end

  def add_to_cart
    item = Item.find(params[:item_id])
    cart = Cart.find(session[:cart_id])
    cart.items << item
    redirect_to :back
  end

end
