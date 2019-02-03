class Menu < ApplicationRecord
  has_many :articles
  has_one :discountClass, foreign_key: 'class'
  belongs_to :productable, polymorphic: true
end
