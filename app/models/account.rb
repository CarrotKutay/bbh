class Account < ApplicationRecord
  has_many :addresses, as: :addressable
  belongs_to :accountable, polymorphic: true
end
