class User < ApplicationRecord
  has_secure_password

  acts_as_voter

  belongs_to :city

  has_many :gossips
  has_many :comments
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :email, presence: true
  validates :age, presence: true
  validates :description, presence: true
  validates :username, presence: true
  validates :password_digest, presence: true
end
