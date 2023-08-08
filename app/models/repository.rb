class Repository < ApplicationRecord
  belongs_to :user
  validates :name, :remote_id, :stargazers_count ,:user, presence: true
end
