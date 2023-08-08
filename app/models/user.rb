class User < ApplicationRecord
  has_many :repositories
  validates :username, presence: true
  validates :username, uniqueness: true
end
