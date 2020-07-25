class Business < ApplicationRecord
    has_many :comments,  -> { order(:comments => :desc) }, dependent: :destroy 
    has_many :badges
    has_many :user_likes
end
