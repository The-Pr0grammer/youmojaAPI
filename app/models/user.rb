class User < ApplicationRecord
  # has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i , message: "Enter a valid email"}
  has_many :user_bizs, dependent: :destroy 
  has_many :businesses, :through => :userbizs , dependent: :destroy 
  has_many :comments, dependent: :destroy 
  has_many :biz_badges
  has_many :user_hearts, dependent: :destroy 
  has_many :comment_votes, dependent: :destroy
  has_one_attached :image

end
