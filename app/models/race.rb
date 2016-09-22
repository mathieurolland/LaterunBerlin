class Race < ApplicationRecord
has_many :reviews, dependent: :destroy
has_many :favorite_races, dependent: :destroy
has_many :bibs, dependent: :destroy
validates :date, presence: true
validates :adress, presence: true
validates :name, presence: true
validates :race_distance, presence: true
validates :race_type, presence: true
validates :race_type, inclusion: { in: [ "trail", "route", "orientation", "trail urbain", "cross", "course fun"]}
end
