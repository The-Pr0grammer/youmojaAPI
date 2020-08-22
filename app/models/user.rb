class User < ApplicationRecord
  # has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i , message: "Enter a valid email"}
  has_many :userbizs
  has_many :businesses, :through => :userbizs 
  has_many :comments, dependent: :destroy
  has_many :biz_badges, dependent: :destroy
  has_many :user_likes
end
