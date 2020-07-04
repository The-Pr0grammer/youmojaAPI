class UserBizsController < ApplicationController
    def index
        @userbizs = UserBiz.all.order(id: :desc)
        render json: @userbizs,
        include: {user: {}}
    end
end
