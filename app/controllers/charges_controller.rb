class ChargesController < ApplicationController
  after_filter :create_receipt, only: :create

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


  private
  # Create a receipt for the user
  # Clear the cart
  # Show the receipt
  def create_receipt
    cart = Cart.find(session[:cart_id])
    if current_user
      receipt = Receipt.create(user_id: current_user.id)
      receipt.items = cart.items
      receipt.checkout_total = cart.checkout_total
    else
      receipt = Receipt.create
      receipt.items = cart.items
    end
    clear_cart(cart)
    redirect_to show_receipt_path(receipt_id: receipt.id)
  end

  # Clear cart for customers and delete cart for visitors
  def clear_cart(cart)
    if current_user
      cart.items.clear
    else
      cart.delete
    end
  end


end
