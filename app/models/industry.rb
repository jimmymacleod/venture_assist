class Industry < ApplicationRecord

  has_and_belongs_to_many :businesses
  has_and_belongs_to_many :articles
  has_and_belongs_to_many :players
end
