class Business < ApplicationRecord
    belongs_to :user
    has_one :user, :through => :userbiz
end
