class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :projects, dependent: :restrict_with_error
  has_many :comments, dependent: :restrict_with_error
  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
