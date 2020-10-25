class NestedUserSerializer < ActiveModel::Serializer
  attributes :id, :username, :img_url , :image 
  include Rails.application.routes.url_helpers

  def image
    if object.image.attached?
      rails_blob_path(object.image, only_path: true) 
    else return 
    end
    end 
end
