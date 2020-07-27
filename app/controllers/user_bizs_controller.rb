class UserBizsController < ApplicationController
    def index
        @user_bizs = UserBiz.all.order(id: :desc)
        render json: @user_bizs,
        include: {user: {only: ['username','img_url']},business: {include: {comments: {include: {user: {only: ['username','img_url'] }}}}}}
    end
    def show
        @user_biz = UserBiz.find_by(id:params[:id])        
        render json: @user_biz, 
        include: {user: {only: ['username','img_url']}, business: {include: {comments: {include: {user: {only: ['username','img_url'] }}}}}}
    end
end
