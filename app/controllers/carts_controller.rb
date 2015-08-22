class CartsController < ApplicationController
  before_action :set_cart, only:[:show]
  before_action :set_item, only:[:show_quantity_form, :update_quantity_form]

  def show
    @items = @cart.items
    session[:checkout_total] = @items.inject(0) { |sum, item| sum + (item.price * session["item-#{item.id}-qty"])}
  end

  def show_quantity_form
    respond_to do |format|
      format.js {}
    end
  end

  def update_quantity_form
    session["item-#{@item.id}-qty"] = params[:quantity].to_i

    redirect_to cart_path(:id => session[:cart_id])
  end

  private

  def set_cart
    @cart = Cart.find(session[:cart_id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

end
