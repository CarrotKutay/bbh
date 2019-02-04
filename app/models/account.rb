class Account < ApplicationRecord
  has_many :addresses, as: :addressable
  has_many :admin_accounts, as: :accountable
  has_many :customer_accounts, as: :accountable
  has_many :provider_accounts, as: :accountable
  belongs_to :accountable, polymorphic: true
  validates :username, presence:true#, length: {minimum 2}, uniqueness: {case_sensetive: true , message: "This username is already taken!"}
  validates :password, presence:true, length: {in: 6..20,
  too_short: "Password must be bewteen 6 and 20 characters long!",
  too_long: "Password must be bewteen 6 and 20 characters long!"}, format: {with: /\A(?=.*\d)(?=.*([a-z]|[A-Z]))([\x20-\x7E]){6,20}\z/,
  message: 'Password should contain atleast one integer. \nPassword should contain atleast one alphabet(either in downcase or upcase).
  \nPassword can have special characters. \nPassword should be minimum of 6 and maximum of 20 cahracters long.'}
  validates :email, presence:true,format: {with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/}
end
