class Business < ApplicationRecord
    has_many :quotes, dependent: :destroy
    has_many :badges
    has_many :user_likes
end
