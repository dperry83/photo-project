class User < ApplicationRecord
  has_secure_password # stores secure password using bcrypt
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
