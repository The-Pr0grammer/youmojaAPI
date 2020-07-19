class Comment < ApplicationRecord
    belongs_to :business
    belongs_to :user

    belongs_to :parent, class_name: 'Comment', optional: true
    has_many :replies, class_name: 'Reply', foreign_key: :parent_id, dependent: :destroy
end
