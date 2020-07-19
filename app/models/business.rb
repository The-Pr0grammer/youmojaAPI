class Business < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :badges
    has_many :user_likes
end
