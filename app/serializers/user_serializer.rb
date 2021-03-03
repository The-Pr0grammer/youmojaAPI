class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :img_url, :user_bizs, :user_hearts, :badges, :image
  include Rails.application.routes.url_helpers

  def user_bizs
    object.user_bizs.map do |user_biz|
      UserBizSerializer.new(user_biz, scope: scope, root: true, event: object)
    end
  end

  def user_hearts
    object.user_hearts.map do |user_heart|
      UserHeartSerializer.new(user_heart, scope: scope, root: true, event: object)
    end
  end

  def badges
    object.badges.map do |badge|
      BadgeSerializer.new(badge, scope: scope, root: true, event: object)
    end
  end

  def image
    if object.image.attached?
      rails_blob_path(object.image, only_path: true) 
    else return 
    end
    end 
end
