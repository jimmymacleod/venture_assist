class Article < ApplicationRecord

  has_and_belongs_to_many :businesses
  has_and_belongs_to_many :industries
  has_and_belongs_to_many :players
end
