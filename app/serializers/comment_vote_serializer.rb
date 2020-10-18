class CommentVoteSerializer < ActiveModel::Serializer
  attributes :id ,:user_id, :comment_id , :vote , :created_at, :updated_at
end
