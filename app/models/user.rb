class User < ApplicationRecord
  belongs_to :city
  has_many :gossips
  validates :username, presence: true
end
