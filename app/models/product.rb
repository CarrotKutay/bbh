class Product < ApplicationRecord
  belongs_to :productable, polymorphic: true
  enum measurement: [:kg, :g, :mg, :liter, :piece]
end
