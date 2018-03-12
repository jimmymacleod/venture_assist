class Player < ApplicationRecord

  has_and_belongs_to_many :businesses
  has_and_belongs_to_many :articles
  has_and_belongs_to_many :industries
  has_many :images, as: :item, dependant: :destroy

end
