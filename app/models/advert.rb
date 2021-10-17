class Advert < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  validates :type_ad, presence: true, inclusion:  { in: ["Lost", "Find"], 
    message: "%{value} is not a valid type" }
  validates :address, presence: true
  validates :content, presence: true
end