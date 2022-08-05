class User < ApplicationRecord
  has_many :score
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
