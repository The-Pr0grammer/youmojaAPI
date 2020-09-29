class BusinessesController < ApplicationController
    def index
        @businesses = Business.all.order(id: :desc)
        render json: @businesses,
        include: {comments: {}}
    end
    def show
        @business = Business.find_by(id:params[:id])        
        render json: @business, include: {comments: {include: {user: {only: ['id','name','username','img_url'] }, comment_votes: {only: ['id','user_id','vote']}}}}
    end
    def create 
        # byebug
        @business = Business.create(business_params)
        
        # @user_biz = UserBiz.create(user_id:1, business_id:@business.id)
        render json: @business
    end 
    def update 
        @business = Business.find(business_params[:id])
        @business.update(hearts: business_params["hearts"])
        # @biz.save
    end 
    def business_params
        params.require(:business).permit(:id, :name, :city, :state, :summary, :categories, :website, :twitter, :facebook, :phone, :email, :image_url, :hearts)
     end
end
