class Person < ApplicationRecord
  validates :email, confirmation: true
  validates :email_confirmations, presence: true
end
