class CustomerAccount < ApplicationRecord
  has_many :orders
  belongs_to :accountable, polymorphic: true
end
