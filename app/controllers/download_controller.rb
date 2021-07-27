class DownloadController < ApplicationController
  def uuid
    @receipt = Receipt.find_by(uuid: params[:uuid])
    render 'receipts/show'
  end
end
