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

    create_receipt(customer)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

  private
  # Create a receipt for the user
  # Email the receipt
  # Clear the cart
  # Show the receipt
  def create_receipt(customer)
    cart = Cart.find(session[:cart_id])
    if current_user
      receipt = Receipt.create(user_id: current_user.id)
      receipt.purchased_items = receipt.purchased_items + prepare_receipt_items(current_user.cart.items)
      receipt.update_attributes(checkout_total: cookies[:checkout_total])
      UserReceipt.send_receipt_email(customer, receipt).deliver_now
    else
      receipt = Receipt.create
      receipt.purchased_items = receipt.purchased_items + prepare_receipt_items(Cart.find(session[:cart_id]).items)
      receipt.update_attributes(checkout_total: cookies[:checkout_total])
      UserReceipt.send_receipt_email(customer, receipt).deliver_now
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

  # Create purchased items which can be stored in the db for receipts
  def prepare_receipt_items(items)
    items.collect do |item|
      PurchasedItem.create(
      :quantity => cookies["item-#{item.id}-qty"].to_i,
      :category => item.category,
      :description => item.description ,
      :name => item.name,
      :user_id => current_user ? current_user.id : nil,
      :price => item.price
      )
    end
  end


end
