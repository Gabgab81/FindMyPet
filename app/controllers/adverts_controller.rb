class AdvertsController < ApplicationController
  before_action :set_advert, only: [:show, :edit, :update, :destroy]

  def new
    @advert = Advert.new
  end

  def create
    @advert = Advert.new(advert_params)
    @advert.user = current_user
    if @advert.save
      redirect_to advert_path(@advert)
    else
      render :new
    end
  end

  def index
    @advert = Advert.all
  end

  def show
    # @advert = Advert.find(params[:id])
    @message = Message.new
    @user_text = UserText.new
    # @conversation = Conversation.new
    # @conversation_current_user = ConversationUser.new
    # @conversation_advert_user = ConversationUser.new
  end

  def edit
    # @advert = Advert.find(params[:id])
  end

  def update
    # @advert = Advert.find(params[:id])
    @advert.update(advert_params)
    redirect_to advert_path(@advert)
  end

  def destroy
    # @advert = Advert.find(params[:id])
    @advert.destroy
    redirect_to adverts_path
  end
  
  private

  def advert_params
    params.require(:advert).permit(:type_ad, :title, :address, :content, photos: [])
  end

  def set_advert
    @advert = Advert.find(params[:id])
  end
  
  
end
