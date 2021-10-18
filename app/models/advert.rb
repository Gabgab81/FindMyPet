class Advert < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: true, length: { minimum: 5 }
  validates :type_ad, presence: true, inclusion:  { in: ["Lost", "Find", "See"], 
    message: "%{value} is not a valid type" }
  validates :address, presence: true
  validates :content, presence: true
end