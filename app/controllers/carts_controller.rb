class CartsController < ApplicationController
  before_action :set_cart, only:[:show, :show_quantity_form, :update_quantity_form]
  before_action :set_item, only:[:show_quantity_form, :update_quantity_form]

  def show
    @items = @cart.items
    cookies[:checkout_total] = @items.inject(0) { |sum, item| sum + (item.price * cookies["item-#{item.id}-qty"].to_i)}
  end

  def show_quantity_form
    respond_to do |format|
      format.js {}
    end
  end

  def update_quantity_form
    cookies["item-#{@item.id}-qty"] = params[:quantity].to_i

    redirect_to cart_path(:id => session[:cart_id])
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
    @item = Item.find(params[:item_id])
  end

end
