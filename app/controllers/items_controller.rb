class ItemsController < ApplicationController
  before_action :set_item, only:[:show]

  def index
    @items = Item.all
    if session[:cart_id].nil?
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end

  def show
  end

  def add_to_cart
    item = Item.find(params[:item_id])
    cart = Cart.find(session[:cart_id])
    cart.items << item
    redirect_to :back
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

end
