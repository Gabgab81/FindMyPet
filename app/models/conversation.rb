class Conversation < ApplicationRecord

has_many :conversation_users, dependent: :destroy
has_many :user_text, dependent: :destroy

end
