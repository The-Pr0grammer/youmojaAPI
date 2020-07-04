class BusinessesController < ApplicationController
    def index
        @businesses = Business.all.order(id: :desc)
        render json: @businesses,
        include: {user: {}}
    end
end
