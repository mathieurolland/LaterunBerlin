class Message < ApplicationRecord
  belongs_to :order
  belongs_to :user
  validates :content, presence: true
  validates :order, presence: true
  validates :user, presence: true
end
