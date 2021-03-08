class UserBiz < ApplicationRecord
    belongs_to :user, dependent: :destroy
    belongs_to :business, dependent: :destroy                                                                                                                                                                                                                                                   
    # has_many :user_hearts, through: :business, dependent: :destroy 
    # has_many :images_attachments, through: :business
end
