class ItemsController < ApplicationController
  before_action :set_item, only:[:show, :delete]
  before_action :set_cart, only:[:add_to_cart, :remove_from_cart]

  def index
    @items = Item.all
  end

  def show
  end

  #need to add authorization to this
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to cart_path, notice: 'Item was successfully deleted.' }
    end
  end

  def add_to_cart
    item = Item.find(params[:item_id])
    if @cart.items.include?(item)
      cookies["cart-#{@cart.id}item-#{item.id}-qty"] += 1
    else
      @cart.items << item
      cookies["cart-#{@cart.id}-item-#{item.id}-qty"] = 1
    end
    redirect_to :back
  end

  def remove_from_cart
    item = Item.find(params[:item_id])
    @cart.items.delete(item)
    redirect_to :back
  end

  private

  def set_cart
    if current_user
      @cart = current_user.cart
    else
      @cart = Cart.find(session[:cart_id])
    end
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
