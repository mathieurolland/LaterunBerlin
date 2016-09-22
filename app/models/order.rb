class Order < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :bib, dependent: :destroy
  has_many :messages
end
