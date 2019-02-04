class User < ApplicationRecord
  has_many :gossips
  validates :username, presence: true
end
