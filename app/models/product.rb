class Product < ApplicationRecord
  belongs_to :productable, polymorphic: true
  has_many :ingredients, as: :productable
  has_many :articles, as: :productable
  has_many :menus, as: :productable
  enum measurement: [:kg, :g, :mg, :liter, :piece]
end
