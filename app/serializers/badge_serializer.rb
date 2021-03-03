class BadgeSerializer < ActiveModel::Serializer
    attributes :id, :color, :user_id, :business_id, :price, :created_at, :updated_at
    # belongs_to :user, serializer: BaseUserSerializer
    # belongs_to :business, serializer: BusinessSerializer
  
  end