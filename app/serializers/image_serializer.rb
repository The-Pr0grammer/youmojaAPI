class ImageSerializer < ActiveModel::Serializer
  attributes :id, :image_url
  include Rails.application.routes.url_helpers

  def image_url
    # variant = object.avatar.variant(resize: "100x100")
    # return rails_representation_url(variant, only_path: true)
    object do 
      return rails_blob_path(object, only_path: true)
    end
  end 
end
