class ConversationsController < ApplicationController

    def index
        @conversation_users = ConversationUser.where(user_id: current_user)
        
    end

    def show
        @conversation = Conversation.find(params[:id])
        @user_texts = UserText.where(conversation_id: @conversation)

        @user_text = UserText.new

    end

    def destroy
        
    end

end
