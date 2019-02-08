class Gossip < ApplicationRecord
  acts_as_votable

  belongs_to :user

  has_many :comments

  validates :title, presence: true
  validates :title, length: { in: 3..14 }
  validates :content, presence: true
end
