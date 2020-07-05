class User < ApplicationRecord
    has_many :userbizs
    has_many :businesses, :through => :userbizs 
end
