class ItemsController < ApplicationController
  before_action :set_item, only:[:show, :delete]

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
    cart = Cart.find(session[:cart_id])
    cart.items << item
    session["item-#{item.id}-qty"] = 1
    redirect_to :back
  end

  def remove_from_cart
    item = Item.find(params[:item_id])
    cart = Cart.find(session[:cart_id])
    cart.items.delete(item)
    redirect_to :back
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

end
