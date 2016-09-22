class Review < ApplicationRecord
  belongs_to :race
  belongs_to :user
  validates :content, presence: true
  validates :rating, presence: true
  validates :race, presence: true
  validates :user, presence: true
end
