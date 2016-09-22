class Bib < ApplicationRecord
  belongs_to :race
  belongs_to :seller, class_name: "User"
  has_one :order, dependent: :destroy
  validates :bought_price, presence: true
  validates :selling_price, presence: true
  validates :race, presence: true
  validates :status, presence: true
  validates :status, inclusion: { in: %w(contact pay)}
end
