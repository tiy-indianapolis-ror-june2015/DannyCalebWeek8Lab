class ReceiptsController < ApplicationController

  # Needs changed to just find receipts for the current user
  def index
    @receipts = Receipt.all.select { |receipt| receipt.user.id = params[:user_id] }
  end

  def show
    @receipt = Receipt.find(params[:receipt_id])
  end

end
