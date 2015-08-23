class ReceiptsController < ApplicationController

  # Needs changed to just find receipts for the current user
  def index
    @receipts = current_user.receipts
  end

  def show
    @receipt = Receipt.find(params[:receipt_id])
  end

end
