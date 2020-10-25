class UserBizSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :business_id
  belongs_to :user, serializer: NestedUserSerializer
  has_one :business, serializer: BusinessSerializer 

  # class UserSerializer < ActiveModel::Serializer
  #   attributes :id, :name, :username, :img_url, :image
  #   include Rails.application.routes.url_helpers
  #   # Using serializer from app/serializers/gamers_serializer.rb

  #   def image
  #     if object.image.attached?
  #       rails_blob_path(object.image, only_path: true) 
  #     else return 
  #     end
  #     end 
  # end

  # class BusinessSerializer < ActiveModel::Serializer
  #   attributes :id, :name, :summary
  #   has_many :comments

  #   class CommentSerializer < ActiveModel::Serializer
  #     attributes :id, :content
  #     belongs_to :user

  #     class User < ActiveModel::Serializer
  #       attributes :id, :name
  #     end
  #   end
  # end 
end
