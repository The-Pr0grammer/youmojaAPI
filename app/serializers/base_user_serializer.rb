class BaseUserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :img_url
end
