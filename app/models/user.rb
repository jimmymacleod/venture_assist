class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_secure_password

  has_and_belongs_to_many :businesses
  has_many :articles, through: :businesses
  has_many :industries, through: :businesses
  has_many :players, through: :businesses

end
