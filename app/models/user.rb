class User < ApplicationRecord
  validates :username, length: { in: 2..25 }, presence: true, uniqueness: true
  validates :email, length: { in: 2..25 }, presence: true, uniqueness: true
  # validates :email, format: { with: /\A(\S+)@(.+)\.(\S+)\z/ }
  validates :password, length: { minimum: 8 }, presence: true
end
