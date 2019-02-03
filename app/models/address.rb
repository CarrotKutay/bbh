class Address < ApplicationRecord
  belongs_to :account
  belongs_to :addressable, polymorphic: true
end
