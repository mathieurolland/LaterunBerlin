class Order < ApplicationRecord
  belongs_to :buyer, class_name: "User"
  belongs_to :bib
  has_many :messages
  validates :buyer, presence: true
  validates :bib, presence: true

end
