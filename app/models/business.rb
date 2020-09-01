class Business < ApplicationRecord
    has_many :comments,  -> { order(:comments => :desc) }, dependent: :destroy 
    has_many :badges , dependent: :destroy 
    has_many :user_hearts, dependent: :destroy 
end
