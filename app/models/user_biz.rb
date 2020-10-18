class UserBiz < ApplicationRecord
    belongs_to :user
    belongs_to :business, dependent: :destroy                                                                                                                                                                                                                                                   
    has_many :user_hearts, dependent: :destroy 
    has_many :images_attachments, through: :business
end
