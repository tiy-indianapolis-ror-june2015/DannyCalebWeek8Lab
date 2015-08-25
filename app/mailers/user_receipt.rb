class UserReceipt < ApplicationMailer

  default :from => 'customerservice@valdivian.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_receipt_email(user, receipt)
    @user = user
    @receipt = receipt
    mail( :to => @user.email,
          :subject => 'Here is your receipt! Thank you!' )
  end

end
