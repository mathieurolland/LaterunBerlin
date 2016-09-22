class Bib < ApplicationRecord
  belongs_to :race
  belongs_to :user
  has_one :order, dependent: :destroy

end
