class ChargesController < ApplicationController

  def new
  end

  def create
    @amount = session[:checkout_total]

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

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

  def create_receipt
    cart = Cart.find(session[:cart_id])
    if current_user
      receipt = Receipt.create(user_id: current_user.id)
      receipt.items = cart.items
    else
      receipt = Receipt.create
      receipt = cart.items
    end
    clear_cart(cart)
    redirect_to show_receipt_path(receipt)
  end

  def clear_cart(cart)
    if current_user
      cart.items.clear
    else
      cart.delete
    end
  end


end
