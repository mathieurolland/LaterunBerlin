class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages
  has_many :reviews
  has_many :bibs, dependent: :destroy
  has_many :bibs, foreign_key: :seller_id, class_name: "Bib"
  has_many :orders, dependent: :destroy
  has_many :orders, foreign_key: :buyer_id, class_name: "Order"
  has_many :favorite_races, dependent: :destroy





  validates :first_name, presence: true
  validates :last_name, presence: true


end
