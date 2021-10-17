class MessagesController < ApplicationController
  before_action :set_message, only: [:edit, :update, :destroy]

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @message.advert = Advert.find(params[:advert_id])
    @message.save
    redirect_to advert_path(@message.advert)
  end
  
  def edit
    # @message = Message.find(params[:id])
  end
  

  def update
    # @message = Message.find(params[:id])
    @message.update(message_params)
    redirect_to advert_path(@message.advert)
  end

  def destroy
    @advert = @message.advert
    @message.destroy
    redirect_to advert_path(@advert)
  end
  
  
  private

  def message_params
    params.require(:message).permit(:content)
  end
  
  def set_message
    @message = Message.find(params[:id])
  end
  

end
