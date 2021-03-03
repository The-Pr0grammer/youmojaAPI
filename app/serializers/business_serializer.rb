class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :summary, :categories, :hearts, :img_url, :badges, :comments, :images 
  include Rails.application.routes.url_helpers

  def badges
    object.badges.map do |badge|
      BadgeSerializer.new(badge, scope: scope, root: true, event: object)
    end
  end

  def comments
    object.comments.map do |comment|
      CommentSerializer.new(comment, scope: scope, root: false, event: object)
    end
  end

  def images 
  if object.images.attached?
    object.images.map{|img| rails_blob_path(img, only_path: true) }
  else return 
  end
  end 

end
