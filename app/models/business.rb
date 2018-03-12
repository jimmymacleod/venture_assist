class Business < ApplicationRecord

  belongs_to :bucket, optional: true

  has_and_belongs_to_many :articles
  has_and_belongs_to_many :players
  has_and_belongs_to_many :industries
  has_and_belongs_to_many :users
  has_many :images, as: :item, dependant: :destroy


end
