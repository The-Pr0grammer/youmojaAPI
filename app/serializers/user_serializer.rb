class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :img_url, :user_bizs, :user_hearts

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
end
