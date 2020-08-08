class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :userbizs
  has_many :businesses, :through => :userbizs 
  has_many :comments, dependent: :destroy
  has_many :biz_badges, dependent: :destroy
  has_many :user_likes
end
