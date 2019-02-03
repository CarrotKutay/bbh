class AdminAccount < ApplicationRecord
  belongs_to :accountable, polymorphic: true
end
