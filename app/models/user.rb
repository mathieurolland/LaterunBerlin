class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages
  has_many :reviews
  has_many :bibs, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :favorite_races, dependent: :destroy


end
