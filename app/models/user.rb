class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :user_name, uniqueness: true, presence: true, length: { minimum: 3 }
  has_many :adverts, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :conversation_users, dependent: :destroy
  has_many :user_text, dependent: :destroy
end
