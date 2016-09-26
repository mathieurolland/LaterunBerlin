class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages
  has_many :reviews
  has_many :created_bibs, foreign_key: :seller_id, class_name: "Bib", dependent: :destroy
  has_many :sellers, through: :created_bibs, class_name: "User", source: :seller
  has_many :created_orders, foreign_key: :buyer_id, class_name: "Order", dependent: :destroy
  has_many :buyers, through: :created_orders, class_name: "User", source: :buyer
  has_many :favorite_races, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true


end
