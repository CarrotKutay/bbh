class ProviderAccount < ApplicationRecord
  has_many :ingredients
  belongs_to :accountable, polymorphic: true
end
