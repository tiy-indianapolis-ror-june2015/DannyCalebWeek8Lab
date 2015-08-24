class CartsController < ApplicationController
  before_action :set_line_item, only:[:show_quantity_form, :update_quantity_form]

  def show
    @line_items = @cart.line_items
    cookies[:checkout_total] = @line_items.inject(0) { |sum, line_item| sum + (line_item.item.price * line_item.quantity)}
  end

  def show_quantity_form
    respond_to do |format|
      format.js {}
    end
  end

  def update_quantity_form
    @line_item.update_attributes(:quantity => params[:quantity].to_i)
    redirect_to cart_path(:id => session[:cart_id])
  end

  private

  def set_line_item
    @line_item = LineItem.find(params[:line_item_id])
  end

end
