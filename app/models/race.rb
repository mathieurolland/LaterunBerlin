class Race < ApplicationRecord
has_many :reviews, dependent: :destroy
has_many :favorite_races, dependent: :destroy
has_many :bibs, dependent: :destroy
end
