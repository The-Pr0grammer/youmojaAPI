class Quote < ApplicationRecord
    belongs_to :business
    belongs_to :user

    belongs_to :parent, class_name: 'Quote', optional: true
    has_many :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
end
