class Business < ApplicationRecord
    has_many :comments,  -> { order(:comments => :desc) }, dependent: :destroy 
    has_many :badges , dependent: :destroy 
    has_one :user_biz

    has_many_attached :images
    # mount_uploaders :biz_images, BizImageUploader
    # validates_processing_of :biz_image
    # validate :biz_image_size_validation
 
# private
#   def biz_image_size_validation
#     errors[:biz_images] << "should be less than 500KB" if biz_image.size > 0.5.megabytes
#   end
end
