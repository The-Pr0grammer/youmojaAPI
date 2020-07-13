class BusinessesController < ApplicationController
    def index
        @businesses = Business.all.order(id: :desc)
        render json: @businesses
    end
    def update 
        @biz = Business.find(params[:id])
        @biz.update(hearts: params["hearts"])
        # @biz.save
    end 
end
