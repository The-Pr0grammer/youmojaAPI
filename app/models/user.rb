class User < ApplicationRecord
    has_many :userbizs
    has_many :businesses, :through => :userbizs 
    has_many :quotes, dependent: :destroy
    has_many :badges, dependent: :destroy
end
