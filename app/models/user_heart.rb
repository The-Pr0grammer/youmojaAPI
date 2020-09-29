class UserHeart < ApplicationRecord
    belongs_to :user
    belongs_to :user_biz
end
