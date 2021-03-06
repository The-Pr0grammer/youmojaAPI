class CommentSerializer < ActiveModel::Serializer
  attributes :id, :business_id, :content, :score, :created_at, :updated_at
  belongs_to :user, serializer: NestedUserSerializer
  has_many :comment_votes

  # def user
  #   object.user do |user|
  #    UserSerializer.new(user, scope: scope, root: true, event: object)
  #   end
  # end

  # def comment_votes
  #   object.comment_votes.map do |comment_vote|
  #    CommentVote.new(comment_vote, scope: scope, root: true, event: object)
  #   end
  # end

end
