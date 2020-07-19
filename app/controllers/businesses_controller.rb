class BusinessesController < ApplicationController
    def index
        @businesses = Business.all.order(id: :desc)
        render json: @businesses,
        include: {comments: {}}
    end
    def show
        @business = Business.find_by(id:params[:id])        
        render json: @business, include: {comments: {include: {user: {only: ['username','img_url'] }}}}
    end
    def update 
        @biz = Business.find(params[:id])
        @biz.update(hearts: params["hearts"])
        # @biz.save
    end 
end
