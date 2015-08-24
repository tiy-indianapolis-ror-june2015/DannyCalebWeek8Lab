class ChargesController < ApplicationController

  def new
  end

  def create
    @amount = cookies[:checkout_total]

    customer = Stripe::Customer.create(
      :email => params[:email],
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    create_receipt

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path

  end


  private
  # Create a receipt for the user
  # Clear the cart
  # Show the receipt
  def create_receipt
    cart = Cart.find(session[:cart_id])
    if current_user
      receipt = Receipt.create(user_id: current_user.id)
      receipt.items = receipt.items + current_user.cart.items
      receipt.update_attributes(checkout_total: cookies[:checkout_total])
    else
      receipt = Receipt.create
      receipt.items = receipt.items + current_user.cart.items
    end
    clear_cart(cart)
    redirect_to show_receipt_path(receipt_id: receipt.id)
  end

  # Clear cart for customers and delete cart for visitors
  def clear_cart(cart)
    if current_user
      current_user.cart.items.clear
    else
      cart.delete
      session[:cart_id] = nil
    end
  end


end
