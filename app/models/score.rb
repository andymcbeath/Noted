class Score < ApplicationRecord
  validates :title, uniqueness: true, presence: :true
  has_many :user
end
