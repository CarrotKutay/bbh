class Article < ApplicationRecord
  has_many :ingredients
  has_one :discountClass, foreign_key: 'class'
  belongs_to :productable, polymorphic: true
end
