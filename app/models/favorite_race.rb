class FavoriteRace < ApplicationRecord
  belongs_to :race
  belongs_to :user
  validates :race, presence: true
  validates :user, presence: true
end
