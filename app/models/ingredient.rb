class Ingredient < ApplicationRecord
  belongs_to :ProviderAccount, foreign_key: 'providerID'
  belongs_to :productable, polymorphic: true
  belongs_to :warehouse
  enum type: [:vegetable, :fruits, :lean_meats_and_poultry, :fish, :eggs, :tofu, :nuts_and_seeds, :grain, :milk_yoguhrt_cheese]
  enum allergicSubstances: [:cow_milk,:egg,:nuts,:seafood,:wheat,:soy]
end
