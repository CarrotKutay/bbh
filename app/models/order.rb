class Order < ApplicationRecord
  belongs_to :account
  has_one :address, through: :account, as: :addressable
  enum status: [:unassigned, :accepted, :shipped, :delivered, :closed]
end
